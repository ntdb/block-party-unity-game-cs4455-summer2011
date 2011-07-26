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
var buttonGracePeriod : float = 0.5;
private var checkForPlayerOffSwitch : boolean = false;
private var playerIsOnSwitch : boolean = false;
private var timer : float = 0.0;

private var pressed = false;

function OnCollisionEnter(other : Collision){
	if(other.collider.tag == "Player"){
		if(Network.isServer){
			if(!pressed)
				networkView.RPC("RPCPlayOnSound", RPCMode.All);

			child.position.y = transform.position.y;
			playerIsOnSwitch = true;
			switch(targetGOname){
				case "Door": targetGO.GetComponent("DoorController").OpenDoor();
							 break;
				case "Bars": targetGO.GetComponent("BarController").down = true;
							 break;
				case "Gate": targetGO.GetComponent("LaunchController").Launching();
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
		if(checkForPlayerOffSwitch && !playerIsOnSwitch){
			timer += Time.deltaTime;
			Debug.Log(timer);
			if(timer >= buttonGracePeriod){
				child.position.y = transform.position.y + 0.2;
				checkForPlayerOffSwitch = false;
				pressed = false;
				switch(targetGOname){
					case "Door" : break;
					case "Bars" : targetGO.GetComponent("BarController").down = false);
								  break;
					case "Launch" : targetGO.GetComponent("LaunchController");
								 break;
					default :	  Debug.Log("Unknown target GO type: " + targetGOname);
				}
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