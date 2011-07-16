// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var player : GameObject;
private var partner = false;
var requirePartner : boolean;
var myGuiSkin : GUISkin;
var largeStyle : GUIStyle;

// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed : float = .5;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// Other things...
//var Cam : GameObject;

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
static var maxSpeed = 2;
private var doubleJumping : boolean = false;
private var doubleJumpCountdown = 0;

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	//Debug.Log(collision.gameObject.layer);
	if(collision.gameObject.layer == 8){
		grounded = true;
		jumping = false;
		doubleJumping = false;
	}
}

function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 8){
		grounded = false;
		groundedCounter = 30;
	}
}

function Update(){
	if(Network.connections.Length > 0){
		partner = true;
	}
	else
		partner = false;
	if(partner || Network.isClient || !requirePartner){
		player = GameObject.FindWithTag("Player");
		var activeJumpSpeed = jumpSpeed;
		if(partner)
			activeJumpSpeed = jumpSpeed / 2;
		jump = Input.GetButtonDown("Jump");
		if(jump && (groundedCounter > 0 || grounded) && jumping == false)
		{
			player.rigidbody.velocity.y += activeJumpSpeed;
			groundedCounter = 0;
			jumping = true;
			doubleJumpCountdown = 5;
		}
		
		if(jump && jumping == true && doubleJumping == false && doubleJumpCountdown == 0)
		{
			doubleJumping = true;
			player.rigidbody.velocity.y += activeJumpSpeed * 1.2;
		}
		
		if(player.rigidbody.velocity == Vector3(0,0,0)){
			player.rigidbody.rotation = Quaternion.identity;
			grounded = true;
		}
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	if(partner || Network.isClient || !requirePartner){
		player = GameObject.FindWithTag("Player");
		// Get the input and set variables for it
		horizontal = Input.GetAxisRaw("Horizontal"); 
		vertical = Input.GetAxisRaw("Vertical");
		
		if (grounded) {
			UnitMove.Move(player, maxSpeed, vertical, horizontal);
		}
		/*if(vertical > 0) { // moving forward
			if(player.rigidbody.velocity.z < maxSpeed && grounded){
				player.rigidbody.AddForceAtPosition(forwardMoveDirection, player.transform.position, ForceMode.VelocityChange);
				player.rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(vertical < 0) {      // moving back
			if(-player.rigidbody.velocity.z < maxSpeed && grounded){
				player.rigidbody.AddForceAtPosition(backMoveDirection, player.transform.position, ForceMode.VelocityChange);
				player.rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(horizontal > 0) {    // moving right
			if(player.rigidbody.velocity.x < maxSpeed && grounded){
				player.rigidbody.AddForceAtPosition(rightMoveDirection, player.transform.position, ForceMode.VelocityChange);
				player.rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(horizontal < 0) {    // moving left
			if(-player.rigidbody.velocity.x < maxSpeed && grounded){
				player.rigidbody.AddForceAtPosition(leftMoveDirection, player.transform.position, ForceMode.VelocityChange);
				player.rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
			}
		} else {
			player.rigidbody.constraints = RigidbodyConstraints.FreezeRotationY;
		}*/
		
		if(groundedCounter > 0) groundedCounter--;
		if(doubleJumpCountdown > 0) doubleJumpCountdown--;
	}
}
function OnGUI(){
	GUI.skin = myGuiSkin;
	if(!partner && Network.isServer && requirePartner){
		GUI.Label( Rect((Screen.width/2)-220,(Screen.height/2)-80, Screen.width, Screen.height), "Waiting for partner", largeStyle);
	}
}