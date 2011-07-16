// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var targetGO : GameObject;
var startHeight : float = 2.99;
var pushHeight : float = 1.6;
private var targetHeight : float = startHeight;

function OnCollisionEnter(info : Collision){
	if(Network.isServer){
		if(info.collider.tag == "Player" && info.transform.position.y > transform.position.y + 1){
			targetHeight = pushHeight;
		}
	}
}

function OnCollisionExit(info : Collision){
	if(Network.isServer){
		if(info.collider.tag == "Player"){
			targetHeight = startHeight;
		}
	}
}

function FixedUpdate () {
	if(transform.position.y > targetHeight + 0.005)
		transform.position.y -= 0.01;
	else if(transform.position.y < targetHeight - 0.005)
		transform.position.y += 0.01;
		
	if(transform.position.y <= pushHeight + 0.2){
			if(targetGO.name == "Door"){
				targetGO.GetComponent("DoorController").OpenDoor();
			}
		}
}