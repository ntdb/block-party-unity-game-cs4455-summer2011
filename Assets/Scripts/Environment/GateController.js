
// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var openHeight : float = -3.3;
var startHeight : float = 8.25;
var targetHeight = startHeight;
var speed : float = 20;
private var triggered : boolean = false;
var gateIsOpened : boolean = false;
var gateSound : AudioSource;

function OpenGate(){
	gateIsOpened = true;
	if (Network.isServer){
		networkView.RPC("RPCOpenGate", RPCMode.AllBuffered);
	}
}

function CloseGate(){
	gateIsOpened = false;
	if (Network.isServer){
		networkView.RPC("RPCCloseGate", RPCMode.AllBuffered);
	}
}

@RPC
function RPCOpenGate(){
	targetHeight = openHeight;
}

@RPC
function RPCCloseGate(){
	targetHeight = startHeight;
}

@RPC
function RPCPlaySound(){
	if (!gateSound.isPlaying){
		gateSound.Play();
	}
	if (transform.position.y == targetHeight)
		gateSound.Stop();
}

function FixedUpdate(){
	if(transform.position.y > targetHeight + 0.2){
		transform.position.y -= Time.deltaTime * speed;
		networkView.RPC("RPCPlaySound", RPCMode.All);
		if(!triggered){
			triggered = true;
			transform.gameObject.layer = 8;
		}
	} 
	else if(transform.position.y < targetHeight - 0.2){
		transform.position.y += Time.deltaTime * speed;
		networkView.RPC("RPCPlaySound", RPCMode.All);
	}
}