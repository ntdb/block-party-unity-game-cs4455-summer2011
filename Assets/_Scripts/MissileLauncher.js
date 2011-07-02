var missile : GameObject;
var timer : int = 0;

function Update () {
	if ((Input.GetMouseButtonDown (0)) && (timer>10) || (Input.GetButtonDown("Jump")))
	{
		if (GameObject.FindWithTag("SpaceCraft"))
		{
			var position : Vector3 = new Vector3(0,-.2,1) * 10.0;
			position = GameObject.FindWithTag("SpaceCraft").transform.TransformPoint(position);
			
			var thisMissile : GameObject = Network.Instantiate (missile, position, GameObject.FindWithTag("SpaceCraft").transform.rotation,0) as GameObject;
			Physics.IgnoreCollision(thisMissile.collider, GameObject.FindWithTag("SpaceCraft").collider);
			
			timer = 0;
		}
		
	}
}

function FixedUpdate(){
	timer++;
}