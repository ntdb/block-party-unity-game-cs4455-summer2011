// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

private var playerTouching : boolean = false;
private var playerHasTouched : boolean = false;
private var finished : boolean = false;
private var finalLightHasMaxed = false;
private var finalLightHasMaxedIsPlaying = true;
private var timeDelta1 : float = 0.0;
private var timeDelta2 : float = 0.0;
private var currentTransition : float = 0.0;
private var playerTouchingIsPlaying = false;
private var resetIsPlaying = false;
private var finishedIsPlaying = false;
private var stallCountdown = 0.0;

var blueLight : GameObject;
var greenLight1 : GameObject;
var greenLight2 : GameObject;
var normalDuration : float = 3.0;
var finishSound : AudioSource;
var finishSoundLong : AudioSource;

private var soundPlayedOnce = false;
private var soundPlayedTwice = false;


function OnCollisionEnter(collisionInfo: Collision){
	if(collisionInfo.collider.tag == "Player" && Network.isServer){
		if (!soundPlayedOnce){
			networkView.RPC("RPCPlaySound", RPCMode.All);
			soundPlayedOnce = true;
		}
		networkView.RPC("OnePlayerHasTouched", RPCMode.AllBuffered);
		if(playerTouching == false)
			playerTouching = true;
		else
		{
			if (!soundPlayedTwice){
				networkView.RPC("RPCPlayFinalSound", RPCMode.All);
				soundPlayedTwice = true;
			}
			networkView.RPC("BothPlayersAreTouching", RPCMode.AllBuffered);
		}
	}
}

function OnCollisionExit(collisionInfo: Collision){
	if(collisionInfo.collider.tag == "Player" && Network.isServer)
		playerTouching = false;
}

@RPC
function OnePlayerHasTouched(){
	playerHasTouched = true;
}

@RPC
function BothPlayersAreTouching(){
	finished = true;
	GameObject.FindWithTag("Player").GetComponent("BoxMove").LockControls();
}

@RPC
function RPCPlaySound(){
	if (!finishSound.isPlaying){
		finishSound.Play();
	}
}

@RPC
function RPCPlayFinalSound(){
	if (!finishSoundLong.isPlaying){
		finishSoundLong.Play();
	}
}

function Update(){
	if(finalLightHasMaxed){
		if(!finalLightHasMaxedIsPlaying){
			finalLightHasMaxedIsPlaying = true;
			timeDelta2 = 0.0;
			stallCountdown = 3.0;
			timeDelta1 = 3.0;
		}
		if(stallCountdown > 0.0){
			stallCountdown = stallCountdown - Time.deltaTime;
		} else if(blueLight.light.intensity > 0.0){
			timeDelta2 = timeDelta2 + Time.deltaTime;
			currentTransition = timeDelta2 / normalDuration;
			blueLight.light.intensity = 8.0 - Mathf.Min((8.0 * currentTransition), 8.0);
		} else if(timeDelta1 > 0.0){
			timeDelta1 = timeDelta1 - Time.deltaTime;
		} else {
			if(Network.isServer)
				GameObject.Find("GUIObject").GetComponent("NetworkLevelLoad").LoadNextLevel();
		}
	} else if(finished){
		timeDelta2 = timeDelta2 + Time.deltaTime;
		currentTransition = timeDelta2 / normalDuration;
		if(blueLight.light.intensity < 8.0){
			blueLight.light.intensity = Mathf.Min((8.0 * currentTransition), 8.0) / 4.0 + 6.0;
		}
		if(greenLight2.light.intensity < 8.0){
			greenLight2.light.intensity = Mathf.Min((8.0 * currentTransition), 8.0);
		} else {
			finalLightHasMaxed = true;
		}
	}
	
	if(playerHasTouched && greenLight1.light.intensity < 8.0){
		timeDelta1 = timeDelta1 + Time.deltaTime;
		currentTransition = timeDelta1 / normalDuration;
		greenLight1.light.intensity = Mathf.Min((8.0 * currentTransition), 8.0);
		blueLight.light.intensity = (8.0 - Mathf.Min((8.0 * currentTransition), 8.0)) / 4.0 + 6.0;
	}
}