// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var PlayerPrefab : Transform;
var ShadowProjector : Transform;

function OnNetworkLoadedLevel() {
	//Instantiating player
	if(Network.isClient){
		ShadowProjector = PlayerPrefab.Find("Blob Shadow Projector");
		Network.Instantiate(PlayerPrefab, transform.position, transform.rotation, 0);	
	}
}

function OnPlayerDisconnected (player : NetworkPlayer) {
	Network.RemoveRPCs(player,0);
	Network.DestroyPlayerObjects(player);
	Destroy(ShadowProjector);
}