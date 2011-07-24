// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var targetGO : GameObject;
var oneTimeButton : boolean = false;
var child : Transform;
var buttonOnSound : AudioSource;
var buttonOffSound : AudioSource;
var targetGOname : String;
private var checkForPlayerOffSwitch : boolean = false;
private var playerIsOnSwitch : boolean = false;

private var pressed = false;

function OnCollisionEnter(other : Collision){
	if(other.collider.tag == "Player"){
		if(Network.isServer){
			networkView.RPC("RPCPlayOnSound", RPCMode.All);
			child.position.y = transform.position.y;
			playerIsOnSwitch = true;
			switch(targetGOname){
				case "Door": targetGO.GetComponent("DoorController").OpenDoor();
							 break;
				default:
							Debug.Log("Unknown target GO type: " + targetGOname);
			}
		}
	}
}

function OnCollisionExit(other : Collision){
	if(!oneTimeButton){
		if(other.collider.tag == "Player"){
			if(Network.isServer){
				playerIsOnSwitch = false;
			}
		}
	}
}

function Update(){
	if(Network.isServer && !oneTimeButton){
		if(playerIsOnSwitch){
			checkForPlayerOffSwitch = true;
			timer = 0;
		}
		if(checkForPlayerOffSwitch){
			timer += Time.deltaTime;
			if(timer >= 1.0)
				child.position.y = transform.position.y + 0.2;
				checkForPlayerOffSwitch = false;
				switch(targetGOname){
					case "Door" : break;
					default :	  Debug.Log("Unknown target GO type: " + targetGOname);
				}
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