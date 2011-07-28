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
private var triggered : boolean = false;
var doorIsOpened : boolean = false;
var doorSound : AudioSource;

function OpenDoor(){
	doorIsOpened = true;
	if (Network.isServer){
		networkView.RPC("RPCOpenDoor", RPCMode.AllBuffered);
	}
}

@RPC
function RPCOpenDoor(){
	targetHeight = openHeight;
}

@RPC
function RPCPlaySound(){
	if (!doorSound.isPlaying){
		doorSound.Play();
	}
	if (transform.position.y == targetHeight)
		doorSound.Stop();
}

function FixedUpdate(){
	if(transform.position.y > targetHeight) {
		transform.position.y = Mathf.MoveTowards(transform.position.y, targetHeight, 10 * Time.deltaTime);
		if(Network.isServer)
			networkView.RPC("RPCPlaySound", RPCMode.All);
		if(!triggered){
			triggered = true;
			var children = gameObject.GetComponentInChildren(Transform);
			for(var childGO in children){
				childGO.gameObject.layer = 8;
			}
		}
	} 
	else if (doorIsOpened && transform.position.y == targetHeight) {
		doorIsOpened = false;
		if(Network.isServer)
			networkView.RPC("RPCPlaySound", RPCMode.All);
	}
}
