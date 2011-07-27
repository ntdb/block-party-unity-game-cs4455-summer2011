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
			switch(targetGO.name){
				case "Door": targetGO.GetComponent("DoorController").OpenDoor();
							 break;
				case "Bars": targetGO.GetComponent("BarController").Down();
							 break;
				case "Launcher": targetGO.GetComponent("LauncherController").Activate();
								 break;
				case "Ramp":  if(Network.isServer){ targetGO.GetComponent("RampController").Activate(); }
							  break;
				default:
							Debug.Log("Unknown target GO type: " + targetGO.name);
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
			if(timer >= buttonGracePeriod){
				if(Network.isServer){
					networkView.RPC("RPCPlayOffSound", RPCMode.All);
				}
				child.position.y = transform.position.y + 0.2;
				checkForPlayerOffSwitch = false;
				pressed = false;
				switch(targetGO.name){
					case "Door" : break;
					case "Bars" : targetGO.GetComponent("BarController").Up();
								  break;
					case "Launcher" : targetGO.GetComponent("LauncherController").Deactivate();
								  break;
					case "Ramp" : targetGO.GetComponent("RampController").Activate();
								  break;
					default :	  Debug.Log("Unknown target GO type: " + targetGO.name);
								  break;
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

@RPC 
function RPCPlayOffSound() 
{
	if(!oneTimeButton){
		buttonOffSound.Play();
	}	
}