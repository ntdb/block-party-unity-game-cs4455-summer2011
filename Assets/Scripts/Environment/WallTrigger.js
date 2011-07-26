function OnTriggerEnter(other : Collider) {
	if (other.CompareTag("Player") && other.gameObject.GetComponent("BoxMove").HasHeavyPowerUp == true) {
		Debug.Log(gameObject.GetComponentsInChildren(Rigidbody));
		var rigids : Component[] = gameObject.GetComponentsInChildren(Rigidbody);
		Debug.Log(rigids.length);
		for (var i : Rigidbody in rigids) {
			i.isKinematic = false;
		}
	}
}