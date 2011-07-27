
// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var barSpeed = 12;
private var down : boolean = false;
private var secondDown : boolean = false;
private var startingPos;
private var timer = 0;
var gateSound : AudioSource;

function Awake() {
	startingPos = new Array();
	for(i=0; i<transform.childCount; i++) {
		startingPos.push(transform.GetChild(i).position.y);
	}
}

function Update () {
	if(!down && !secondDown) {
		timer = 0;
	} else {
		timer++;
	}

	for(i=0; i<transform.childCount; i++) {
		var thisChild : Transform = transform.GetChild(i);
	
		if((!secondDown) && thisChild.position.y < startingPos[i]) {
			transform.GetChild(i).position.y += barSpeed * Time.deltaTime;
		}
		else if((!secondDown) && thisChild.position.y < startingPos[i]) {
			transform.GetChild(i).position.y += barSpeed * Time.deltaTime;
		}
		else if(secondDown || down && thisChild.position.y - startingPos[i] > -(thisChild.lossyScale.y) * 2 && timer > 30 * (i % 2)) {
			transform.GetChild(i).position.y -= barSpeed * Time.deltaTime;
		}		
	}
}

function Down() {
	if(Network.isServer) {
		networkView.RPC("RPCDown", RPCMode.AllBuffered);
	}
}

function Up() {
	if(Network.isServer) {
		networkView.RPC("RPCUp", RPCMode.AllBuffered);
	}
}

@RPC
function RPCDown() {
	down = true;
}

@RPC
function RPCUp() {
	down = false;
}

function SecondDown() {
	if(Network.isServer) {
		networkView.RPC("RPCSecondDown", RPCMode.AllBuffered);
	}
}

function SecondUp() {
	if(Network.isServer) {
		networkView.RPC("RPCSecondUp", RPCMode.AllBuffered);
	}
}

@RPC
function RPCSecondDown() {
	secondDown = true;
}

@RPC
function RPCSecondUp() {
	secondDown = false;
}

@RPC
function RPCPlaySound() {
	if(!gateSound.isPlaying) {
		gateSound.Play();
	}
	if(!down) {
		gateSound.Stop();
	}
}