var SpaceCraft : Transform;


function OnNetworkLoadedLevel() {
	// Instantiating SpaceCraft when Network is loaded
	Network.Instantiate(SpaceCraft, transform.position, transform.rotation, 0);

}

function OnPlayerDisconnected (player : NetworkPlayer) {
	Network.RemoveRPCs(player, 0);
	Network.DestroyPlayerObjects(player);
}

function Update () {
}