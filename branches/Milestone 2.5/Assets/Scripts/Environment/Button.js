var targetGO : GameObject;
var startHeight : float = 2.5;
var pushHeight : float = 2.44;
private var targetHeight : float = startHeight;

function OnCollisionEnter(info : Collision){
	if(info.collider.tag == "Player"){
		if(targetGO.name == "Door"){
			targetGO.GetComponent("DoorController").OpenDoor();
		}
		targetHeight = pushHeight;
	}
}

function OnCollisionExit(info : Collision){
	if(info.collider.tag == "Player"){
		targetHeight = startHeight;
	}
}

function FixedUpdate () {
	if(transform.position.y > targetHeight)
		transform.position.y -= 0.01;
	else if(transform.position.y < targetHeight)
		transform.position.y += 0.01;
}