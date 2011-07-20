var Collectible : Transform;

function OnNetworkLoadedLevel() {
	//Instantiating player
	if(Network.isServer){
		Network.Instantiate(Collectible, transform.position, transform.rotation, 0);	
	}
}