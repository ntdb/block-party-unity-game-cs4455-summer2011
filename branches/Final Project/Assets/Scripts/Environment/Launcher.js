// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var activeRotation : float = 90;
var startRotation : float = 0;
var targetRotation = startRotation;
private var triggered : boolean = false;
var launcherIsActive : boolean = false;
var launcherSound : AudioSource;

function Awake() {
}

function Activate() {
	launcherIsActive = true;
	if (Network.isServer){
		networkView.RPC("RPCActivate", RPCMode.AllBuffered);
	}
}

function Deactivate(){
	launcherIsActive = false;
	if (Network.isServer){
		networkView.RPC("RPCDeactivate", RPCMode.AllBuffered);
	}
}

@RPC
function RPCActivate(){
	targetRotation = activeRotation;
}

@RPC
function RPCDeactivate(){
	targetRotation = startRotation;
}

/*@RPC
function RPCPlaySound(){
	if (!doorSound.isPlaying){
		doorSound.Play();
	}
	if (transform.position.y == targetHeight)
		doorSound.Stop();
}*/

function FixedUpdate(){
	/*Debug.Log("Angle: " + transform.eulerAngles);
	Debug.Log("Target: " + targetRotation);
	Debug.Log("Active?: " + launcherIsActive);*/
	var angle : float = Mathf.MoveTowardsAngle(transform.eulerAngles.x, targetRotation, activeRotation * 2 * Time.deltaTime);
	var rot : Quaternion = Quaternion.Euler(Vector3(angle, 0, 0));
	rigidbody.MoveRotation(rot);
	//transform.eulerAngles.x =  angle;
	/*if (launcherIsActive && transform.eulerAngles.x != targetRotation) {
	} else {
	}
	if(transform.eulerAngles.x < targetRotation) {
		if (launcherIsActive) {
			transform.Rotate(activeRotation * Time.deltaTime * 4, 0, 0);
		}
		//networkView.RPC("RPCPlaySound", RPCMode.All);
	} 
	else if(transform.eulerAngles.x > targetRotation) {
		if (!launcherIsActive) {
			transform.Rotate(-(activeRotation) * (Time.deltaTime * 4), 0, 0);
		}
		//networkView.RPC("RPCPlaySound", RPCMode.All);
	}*/
}