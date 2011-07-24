// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

private var partner = false;
var requirePartner : boolean;
var myGuiSkin : GUISkin;
var largeStyle : GUIStyle;

// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed : float = .5;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// These are external vars needed for powerups
var HasGlidePowerUp : boolean = false;
var Wings : GameObject;
var HasRocketSkates : boolean = false;
var Skates : GameObject;

// These variables are there for use by the script and don't need to be edited
private var state = 0;
var groundedCounter = 10000;
private var grounded : boolean = true;
private var canMove : boolean = true;
private var jumping : boolean = false;
var lookRot : float;
private var forwardMoveDirection;
private var backMoveDirection;
private var leftMoveDirection;
private var rightMoveDirection;
static var maxSpeed = 7;
private var doubleJumping : boolean = false;
private var doubleJumpCountdown = 0;
private var quaternionCountdown = 15;
private var sideways : boolean = false;
public var camRot : float = 0.0;
public var lockControls : boolean = false;
private var gliding : boolean = false;

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{
	Destroy(GetComponent("CharacterController"));
	if(!networkView.isMine){
		enabled = false;
	}
	else{
		forwardMoveDirection = Vector3(0, 0, 1.2);
		backMoveDirection = Vector3(0, 0, -1.2);
		leftMoveDirection = Vector3(-1.2, 0, 0);
		rightMoveDirection = Vector3(1.2, 0, 0);
	}
	
	Cam = GameObject.FindWithTag("MainCamera");
}

//locks the controls
function LockControls(){
	lockControls = true;
}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	if(gliding){
		canMove = true;
	} else {
		if(collision.gameObject.layer == 8){
			grounded = true;
			jumping = false;
			doubleJumping = false;
			canMove = true;
		} else if(collision.gameObject.layer == 9 && jumping){
			canMove = false;
		}
	}
}

function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 8){
		grounded = false;
		groundedCounter = 30;
	} else if(collision.gameObject.layer == 9){
		canMove = true;
	}
}

function Update(){
	if(!jumping)
		canMove = true;
	if(Network.connections.Length > 0){
		partner = true;
	}
	else
		partner = false;
	if((partner || Network.isClient || !requirePartner) && !lockControls){
			
		jump = Input.GetButtonDown("Jump");
		action = Input.GetButtonDown("Action");
		
		if(action){
		} else {
		}
		
		if(jump && (groundedCounter > 0 || grounded) && jumping == false)
		{
			rigidbody.velocity.y += jumpSpeed;
			groundedCounter = 0;
			jumping = true;
			doubleJumpCountdown = 5;
		}
		
		if(Input.GetButtonDown("RotateCamL")) {
			cameraLeft();
		} else if(Input.GetButtonDown("RotateCamR")) {
			cameraRight();
		}
		
		if(jump && jumping == true && doubleJumping == false && doubleJumpCountdown == 0)
		{
			doubleJumping = true;
			rigidbody.velocity.y += jumpSpeed * 1.2;
		}

		if(!Input.anyKey && rigidbody.angularVelocity.magnitude < .3){
			rigidbody.rotation = Quaternion.identity;
		}
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	if((partner || Network.isClient || !requirePartner) && !lockControls){
		// Get the input and set variables for it
		horizontal = Input.GetAxisRaw("Horizontal"); 
		vertical = Input.GetAxisRaw("Vertical");
		
		if(Mathf.Sqrt(Mathf.Pow(rigidbody.velocity.x,2) + Mathf.Pow(rigidbody.velocity.z,2)) < maxSpeed && canMove) {
			if(vertical != 0) { //moving forward or backward
				rigidbody.AddForceAtPosition(vertical > 0 ? forwardMoveDirection : backMoveDirection, transform.position, ForceMode.VelocityChange);
				if (horizontal == 0){
					rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
				}
			}
			if(horizontal != 0) { //moving right or left
				rigidbody.AddForceAtPosition(horizontal > 0 ? rightMoveDirection : leftMoveDirection, transform.position, ForceMode.VelocityChange);
				if (vertical == 0){
					rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
				}
			}
		}
		rigidbody.constraints = RigidbodyConstraints.FreezeRotationY;
		
		if(groundedCounter > 0) groundedCounter--;
		if(doubleJumpCountdown > 0) doubleJumpCountdown--;
		if(quaternionCountdown > 0 && !Input.anyKey) quaternionCountdown--;
	}
}
function OnGUI(){
	GUI.skin = myGuiSkin;
	if(!partner && Network.isServer && requirePartner){
		GUI.Label( Rect((Screen.width/2)-220,(Screen.height/2)-80, Screen.width, Screen.height), "Waiting for partner", largeStyle);
	}
}

function cameraLeft() {
	var temp : Vector3 = forwardMoveDirection;
	forwardMoveDirection = leftMoveDirection;
	leftMoveDirection = backMoveDirection;
	backMoveDirection = rightMoveDirection;
	rightMoveDirection = temp;
	sideways = !sideways;
	camRot = camRot - 90;
}

function cameraRight() {
	var temp : Vector3 = forwardMoveDirection;
	forwardMoveDirection = rightMoveDirection;
	rightMoveDirection = backMoveDirection;
	backMoveDirection = leftMoveDirection;
	leftMoveDirection = temp;
	sideways = !sideways;
	camRot = camRot + 90;
}

function GetGlidePowerUp(){
	HasGlidePowerUp = true;
}

function GetRocketSkatesPowerUp(){
	HasRocketSkates = true;
}