// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed = 800;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// Other things...
var Cam : GameObject;

// These variables are there for use by the script and don't need to be edited
private var state = 0;
private var grounded = 10000;
private var jumpLimit = 0;
private var fwdWeight : float = 0.5;
private var upWeight : float = -0.5;
private var totalRotation : float = 0; // determines if we're past the 90 degrees when rolling
private var rolling : boolean = false;
private var allowInput : boolean = true;
private var direction = "";
private var preRollPosition : Vector3;
private var spinAmount : float;
var lookRot : float;
private var forwardMoveDirection;
private var backMoveDirection;
private var leftMoveDirection;
private var rightMoveDirection;
var maxSpeed = 2;

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{ 
    forwardMoveDirection = Vector3(0, 0, 1.2);
	backMoveDirection = -forwardMoveDirection;
	leftMoveDirection = Vector3(-1.2, 0, 0);
	rightMoveDirection = -leftMoveDirection;
}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		state ++;
		if(state > 0)
		{
			grounded = 10;
		}
	}
}

function OnCollisionStay(collision : Collision){
	if(collision.gameObject.layer == 0){
		if(state > 0)
		{
			grounded = 100;
		}
	}
}


function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		state --;
		if(state < 1)
		{
			grounded = 10;
			state = 0;
		}
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	
    // Get the input and set variables for it
		jump = Input.GetButtonDown("Jump");
		horizontal = Input.GetAxisRaw("Horizontal"); 
		vertical = Input.GetAxisRaw("Vertical");

	if(vertical > 0) { // moving forward
		if(rigidbody.velocity.z < maxSpeed && grounded > 0)
			rigidbody.AddForceAtPosition(forwardMoveDirection, transform.position, ForceMode.VelocityChange);
	} else if(vertical < 0) {      // moving back
		if(-rigidbody.velocity.z < maxSpeed && grounded > 0)
			rigidbody.AddForceAtPosition(backMoveDirection, transform.position, ForceMode.VelocityChange);
	} else if(horizontal > 0) {    // moving right
		if(rigidbody.velocity.x < maxSpeed && grounded > 0)
			rigidbody.AddForceAtPosition(rightMoveDirection, transform.position, ForceMode.VelocityChange);
	} else if(horizontal < 0) {    // moving left
		if(-rigidbody.velocity.x < maxSpeed && grounded > 0)
			rigidbody.AddForceAtPosition(leftMoveDirection, transform.position, ForceMode.VelocityChange);
	}

	// This part is for jumping. I only let jump force be applied every 10 physics frames so
	// the player can't somehow get a huge velocity due to multiple jumps in a very short time
	if(jumpLimit < 10) jumpLimit ++;

	if(jump && grounded > 0 && jumpLimit >= 10)
	{
		rigidbody.velocity.y += jumpSpeed;
		jumpLimit = 0;
	}
	
	if(grounded > 0) grounded--;
 }