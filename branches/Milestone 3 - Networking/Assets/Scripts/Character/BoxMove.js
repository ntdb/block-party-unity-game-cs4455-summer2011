// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed = 800;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// Other things...
var Cam : GameObject;

// These variables are there for use by the script and don't need to be edited
private var state = 0;
var groundedCounter = 10000;
private var grounded : boolean = true;
private var jumping : boolean = false;
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
private var doubleJumping : boolean = false;
private var doubleJumpCountdown = 0;

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
	if(collision.gameObject.layer != 0){
		grounded = true;
		jumping = false;
		doubleJumping = false;
	}
}

function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = false;
		groundedCounter = 30;
	}
}

function Update(){
	jump = Input.GetButtonDown("Jump");
	if(jump && (groundedCounter > 0 || grounded) && jumping == false)
	{
		rigidbody.velocity.y += jumpSpeed;
		groundedCounter = 0;
		jumping = true;
		doubleJumpCountdown = 5;
	}
	
	if(jump && jumping == true && doubleJumping == false && doubleJumpCountdown == 0)
	{
		doubleJumping = true;
		rigidbody.velocity.y += jumpSpeed * 1.2;
	}
}

// This is called every physics frame
function FixedUpdate ()
{
    // Get the input and set variables for it
	horizontal = Input.GetAxisRaw("Horizontal"); 
	vertical = Input.GetAxisRaw("Vertical");

	if(vertical > 0 && (groundedCounter > 0 || grounded)) { // moving forward
		if(rigidbody.velocity.z < maxSpeed){
			rigidbody.AddForceAtPosition(forwardMoveDirection, transform.position, ForceMode.VelocityChange);
			rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(vertical < 0 && (groundedCounter > 0 || grounded)) {      // moving back
		if(-rigidbody.velocity.z < maxSpeed){
			rigidbody.AddForceAtPosition(backMoveDirection, transform.position, ForceMode.VelocityChange);
			rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(horizontal > 0 && (groundedCounter > 0 || grounded)) {    // moving right
		if(rigidbody.velocity.x < maxSpeed){
			rigidbody.AddForceAtPosition(rightMoveDirection, transform.position, ForceMode.VelocityChange);
			rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(horizontal < 0 && (groundedCounter > 0 || grounded)) {    // moving left
		if(-rigidbody.velocity.x < maxSpeed){
			rigidbody.AddForceAtPosition(leftMoveDirection, transform.position, ForceMode.VelocityChange);
			rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
		}
	} else {
		rigidbody.constraints = RigidbodyConstraints.FreezeRotationY;
		if(rigidbody.velocity == Vector3(0,0,0))
			rigidbody.rotation = Quaternion.identity;
	}
	
	if(groundedCounter > 0) groundedCounter--;
	if(doubleJumpCountdown > 0) doubleJumpCountdown--;
}