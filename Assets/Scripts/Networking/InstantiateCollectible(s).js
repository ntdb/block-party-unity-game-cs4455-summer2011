// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var Collectible : Transform;

function OnNetworkLoadedLevel() {
	//Instantiating collectible
	if(Network.isServer){
		Network.Instantiate(Collectible, transform.position, transform.rotation, 0);	
	}
}