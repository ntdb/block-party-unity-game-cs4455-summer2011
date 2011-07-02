var turnSpeed : float = 3.0;
var maxTurnLean : float = 70.0;
var maxTilt : float = 50.0;

var sensitivity : float = 0.5;

var forwardForce : float = 5.0;
var guiSpeedElement : Transform;

var craft : GameObject;

private var normalizedSpeed : float = 0.2;
private var euler : Vector3 = Vector3.zero;

var horizontalOrientation : boolean = true;

function Awake () {
	/*if (horizontalOrientation)
	{
		iPhoneSettings.screenOrientation = iPhoneScreenOrientation.LandscapeLeft;
	}
	else
	{
		iPhoneSettings.screenOrientation =
			iPhoneScreenOrientation.Portrait;
	}*/
	
	guiSpeedElement = GameObject.Find("speed").transform;
	guiSpeedElement.position = new Vector3 (0, normalizedSpeed, 0);
}

function Update () {
	for (var evt : Touch in Input.touches)
	{
		if (evt.phase == TouchPhase.Moved)
		{
			normalizedSpeed = evt.position.y / Screen.height;
			guiSpeedElement.position = new Vector3 (0, normalizedSpeed, 0);
		}
	}
}


function FixedUpdate () {
	if(GameObject.FindWithTag("SpaceCraft"))
	{
		GameObject.FindWithTag("SpaceCraft").rigidbody.AddRelativeForce(0,0, normalizedSpeed * (forwardForce * 3));
		
		var v = Input.GetAxisRaw("Vertical");
		var h = Input.GetAxisRaw("Horizontal");
		
		//Rotate turn based on acceleration
		euler.y += h * turnSpeed;
		
		//Since we set absolute lean, do smoothing
		euler.z = Mathf.Lerp(euler.z, -h * maxTurnLean, 0.2);
		
		euler.x = Mathf.Lerp(euler.x, v * maxTilt, 0.2);
		
		var rot : Quaternion = Quaternion.Euler(euler);
		
		GameObject.FindWithTag("SpaceCraft").transform.rotation = Quaternion.Lerp(transform.rotation, rot, sensitivity);
	}
}
