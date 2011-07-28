// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

function OnTriggerEnter(other : Collider) {
	if (other.CompareTag("Player") && other.gameObject.GetComponent("BoxMove").heavyIsActivated == true) {
		networkView.RPC("tellServerToLoosenWall", RPCMode.Server);
	}
}

@RPC
function tellServerToLoosenWall(){
	networkView.RPC("loosenWall", RPCMode.AllBuffered);
}

@RPC
function loosenWall(){
	var rigids : Component[] = gameObject.GetComponentsInChildren(Rigidbody);
	for (var i : Rigidbody in rigids) {
		i.isKinematic = false;
	}
	Destroy(gameObject.GetComponent(BoxCollider));
}