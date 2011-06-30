var pivot : Transform;
// this is half the length of the side of the cube
var halfSideLength : float = 0.5;

function Start() {
	pivot.position.y = transform.position.y - halfSideLength; 
}

function Update () {
   if (Input.GetKeyDown (KeyCode.RightArrow)) {
      rotateRight();
   }
}

function rotateRight() {
	rigidbody.AddForce(50,50,0,ForceMode.Impulse);
}