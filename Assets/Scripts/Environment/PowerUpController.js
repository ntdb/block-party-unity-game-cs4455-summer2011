public var Powerups : GameObject[];
var respawnTime : float = 1.5;
private var Timers : float[];
private var previousXPositions : int[];

function Awake(){
	if(Network.isServer){
		Timers = new float[Powerups.length];
		for(var timer in Timers)
			timer = 0.0;
		previousXPositions = new int[Powerups.length];
		for(var i = 0; i < previousXPositions.length; i++)
			previousXPositions[i] = Powerups[i].transform.position.x;
	}
}

function Update(){
	if(Network.isServer){
		for(var i = 0; i < Powerups.length; i++){
			if(Powerups[i].transform.position.x >= 10000){
				Timers[i] += Time.deltaTime;
				if(Timers[i] >= respawnTime){
					Timers[i] = 0;
					networkView.RPC("moveOneBack", RPCMode.AllBuffered, i);
				}
			}
		}
	}
}

@RPC
function moveOneBack(i : int){
	Powerups[i].transform.position.x = previousXPositions[i];
}