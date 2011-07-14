var PlayerPrefab : Transform;

function OnNetworkLoadedLevel() {
	//Instantiating player
	if(Network.isClient){
		Network.Instantiate(PlayerPrefab, transform.position, transform.rotation, 0);	
	}
}

function OnPlayerDisconnected (player : NetworkPlayer) {
	Network.RemoveRPCs(player,0);
	Network.DestroyPlayerObjects(player);
}