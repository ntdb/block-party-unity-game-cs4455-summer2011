
function Update () {
	if (Input.GetButton ("Vertical")) {
		dir = Input.GetAxis("Vertical");
		if (dir > 0) {
			animation.Play("flip");
		} else {
			animation.Play("backflip");
		}
	}
}