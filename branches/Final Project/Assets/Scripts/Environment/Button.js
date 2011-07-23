// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var targetGO : GameObject;
var child : Transform;
var buttonOnSound : AudioSource;
var buttonOffSound : AudioSource;

private var pressed = false;

function OnCollisionEnter(other : Collision){
	if(other.collider.tag == "Player"){
		if(Network.isServer){
			networkView.RPC("RPCPlayOnSound", RPCMode.All);
			child.position.y = transform.position.y;
			targetGO.GetComponent("DoorController").OpenDoor();
		}
	}
}

@RPC
function RPCPlayOnSound(){
	if (!pressed){
		buttonOnSound.Play();
		pressed = true;
	}
}