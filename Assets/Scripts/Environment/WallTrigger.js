// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

function OnTriggerEnter(other : Collider) {
	if (other.CompareTag("Player") && other.gameObject.GetComponent("BoxMove").heavyIsActivated == true) {
		Debug.Log("calling server RPC");
		networkView.RPC("tellServerToLoosenWall", RPCMode.Server);
	}
}

@RPC
function tellServerToLoosenWall(){
	Debug.Log("server calling everyone");
	networkView.RPC("loosenWall", RPCMode.AllBuffered);
}

@RPC
function loosenWall(){
	Debug.Log("fuckin what");
	var rigids : Component[] = gameObject.GetComponentsInChildren(Rigidbody);
	for (var i : Rigidbody in rigids) {
		i.isKinematic = false;
	}
	Destroy(gameObject.GetComponent(BoxCollider));
}