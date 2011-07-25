// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

private var triggered : boolean = false;
//var launched : boolean = false;

function Launching(){
	triggered = true;
	if (Network.isServer){
		networkView.RPC("RPCLaunching", RPCMode.AllBuffered);
	}
}

@RPC
function RPCLaunching(){
	if(triggered){
		gameObject.GetComponent("Hinge Joint").useMotor = true;
	}
}
