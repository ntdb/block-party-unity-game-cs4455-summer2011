// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var PlayerPrefab : Transform;

function OnNetworkLoadedLevel() {
	//Instantiating player
	if(Network.isServer){
		Network.Instantiate(PlayerPrefab, transform.position, transform.rotation, 0);	
	}
}

function OnPlayerDisconnected (player : NetworkPlayer) {
	Network.RemoveRPCs(player,0);
	Network.DestroyPlayerObjects(player);
}