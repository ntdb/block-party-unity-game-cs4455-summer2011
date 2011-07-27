// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

function OnTriggerEnter(other : Collider) {
	if (other.CompareTag("Player") && other.gameObject.GetComponent("BoxMove").HasHeavyPowerUp == true) {
		var rigids : Component[] = gameObject.GetComponentsInChildren(Rigidbody);
		for (var i : Rigidbody in rigids) {
			i.isKinematic = false;
		}
		Destroy(gameObject.GetComponent(BoxCollider));
	}
}