var speed = 1;

function Update () {
	transform.Rotate(Vector3.up * Time.deltaTime * speed);
}