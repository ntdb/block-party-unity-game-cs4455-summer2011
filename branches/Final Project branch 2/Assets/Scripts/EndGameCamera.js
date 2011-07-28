private var target = 5;
private var original = -9;

function Update () {
	if (Input.GetKey(KeyCode.Space)){
		transform.position.z = Mathf.MoveTowards(transform.position.z, target, 20 * Time.deltaTime);
	
		if (transform.position.z == target){
			GUIScript = GetComponent("EndGameGUI");
			GUIScript.enabled = true;
		}
	}
	else {
		GUIScript = GetComponent("EndGameGUI");
		GUIScript.enabled = false;
		transform.position.z = Mathf.MoveTowards(transform.position.z, original, 20 * Time.deltaTime);
	}
}