// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var targetGO : GameObject;
var child : Transform;

function OnCollisionEnter(other : Collision){
	if(other.collider.tag == "Player"){
		if(Network.isServer){
			targetGO.GetComponent("DoorController").OpenDoor();
			child.position.y = transform.position.y;
		}
	}
}