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
private var wingsAreActivated : boolean = false;
var HasRocketSkates : boolean = false;
var Skates : GameObject;
private var skatesAreActivated : boolean = false;
private var originalMaxSpeed : float = 7.0;
var skatesSpeed : float = 14;
var HasHeavyPowerUp : boolean = false;
private var heavyIsActivated : boolean = false;

public var boxRollMaterial : PhysicMaterial;
public var skatesMaterial : PhysicMaterial;

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
private var leftTurnDirection;
private var rightTurnDirection;
static var maxSpeed = 7;
private var doubleJumping : boolean = false;
private var doubleJumpCountdown = 0;
private var quaternionCountdown = 15;
private var sideways : boolean = false;
public var camRot : float = 0.0;
public var lockControls : boolean = false;
private var gliding : boolean = false;
private var coloration : Color = Color(.1451, .3843, .7255, 1);
var syncHelper : SyncHelper;

function Awake ()
{
	if(!networkView.isMine){
		enabled = false;
	}
	else{
		forwardMoveDirection = Vector3(0, 0, cubeSpeed);
		backMoveDirection = Vector3(0, 0, -cubeSpeed);
		leftMoveDirection = Vector3(-cubeSpeed, 0, 0);
		rightMoveDirection = Vector3(cubeSpeed, 0, 0);
		leftTurnDirection = Vector3(0, -cubeSpeed, 0);
		rightTurnDirection = Vector3(0, cubeSpeed, 0);
	}
	
	Cam = GameObject.FindWithTag("MainCamera");
	syncHelper = GameObject.Find("GUIObject").GetComponent(SyncHelper);
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
			if(wingsAreActivated) SwitchWings();
		} else if(collision.gameObject.layer == 9 && jumping && wingsAreActivated){
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
	if(Network.connections.Length > 0){
		partner = true;
	}
	else
		partner = false;
	if((partner || Network.isClient || !requirePartner) && !lockControls){
			
		jump = Input.GetButtonDown("Jump");
		action = Input.GetButtonDown("Action");
		
		if(action){
			if(HasRocketSkates){
				if(!skatesAreActivated)
					DoSpecialAction();
			} else if(HasGlidePowerUp && jumping) {
				DoSpecialAction();
			} else if(HasHeavyPowerUp) {
				DoSpecialAction();
			}
		} else {
			if(HasRocketSkates){
				if(skatesAreActivated)
					DoSpecialAction();
			}
		}
		
		if(jump && (groundedCounter > 0 || grounded) && jumping == false && !heavyIsActivated)
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
		
		if(jump && jumping == true && doubleJumping == false && doubleJumpCountdown == 0 && !heavyIsActivated)
		{
			doubleJumping = true;
			rigidbody.velocity.y += jumpSpeed * 1.2;
		}
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	if(!grounded){
		rigidbody.velocity = Vector3.Scale(rigidbody.velocity, Vector3(0.99, 0.99, 0.99));
	}
	
	if((partner || Network.isClient || !requirePartner) && !lockControls){
		// Get the input and set variables for it
		horizontal = Input.GetAxisRaw("Horizontal"); 
		vertical = Input.GetAxisRaw("Vertical");
		
		if(Mathf.Sqrt(Mathf.Pow(rigidbody.velocity.x,2) + Mathf.Pow(rigidbody.velocity.z,2)) < maxSpeed && canMove) {
			if(vertical != 0) { //moving forward or backward
				rigidbody.AddForceAtPosition(vertical > 0 ? forwardMoveDirection : backMoveDirection, transform.position, ForceMode.VelocityChange);
				if(wingsAreActivated || skatesAreActivated){
					rigidbody.rotation = Quaternion.Slerp(rigidbody.rotation, Quaternion.LookRotation(vertical > 0 ? forwardMoveDirection : backMoveDirection), Time.deltaTime * 10);
				}
			}
			if(horizontal != 0) { //moving right or left
				rigidbody.AddForceAtPosition(horizontal > 0 ? rightMoveDirection : leftMoveDirection, transform.position, ForceMode.VelocityChange);
				if(wingsAreActivated || skatesAreActivated){
					rigidbody.rotation = Quaternion.Slerp(rigidbody.rotation, Quaternion.LookRotation(horizontal > 0 ? rightMoveDirection : leftMoveDirection), Time.deltaTime * 10);
				}
// for turning with the skates
/*				if(skatesAreActivated){
					rigidbody.rotation = Quaternion.Slerp(rigidbody.rotation, 
					Quaternion.LookRotation(horizontal > 0 ? leftMoveDirection | leftTurnDirection : rightMoveDirection | rightTurnDirection), 
					Time.deltaTime * 10);
//					transform.LookAt(horizontal > 0 ? rightTurnDirection : leftTurnDirection);
				}*/
			}
		}
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
	HasRocketSkates = false;
	HasHeavyPowerUp = false;
	transform.rotation = Quaternion.identity;
	collider.sharedMaterial = boxRollMaterial;
	collider.size.y = 1;
	collider.center.y = 0;
	rigidbody.constraints = RigidbodyConstraints.None;
	if(transform.childCount > 0){
		Network.Destroy(transform.GetChild(0).gameObject);
	}
	var wings = Instantiate(Wings, Vector3(transform.position.x, transform.position.y - 0.5, transform.position.z), transform.rotation);
	syncHelper.getWings(networkView.viewID);
	wings.transform.parent = transform;
	if(heavyIsActivated) SwitchHeavy();
	if(skatesAreActivated) SwitchSkates();
}

function GetRocketSkatesPowerUp(){
	HasRocketSkates = true;
	HasGlidePowerUp = false;
	HasHeavyPowerUp = false;
	transform.rotation = Quaternion.identity;
	transform.position = Vector3(transform.position.x, transform.position.y + 0.5, transform.position.z);
	collider.sharedMaterial = skatesMaterial;
	collider.size.y = 1.6;
	collider.center.y = -0.3;
	if(transform.childCount > 0){
		Network.Destroy(transform.GetChild(0).gameObject);
	}
	var skates = Network.Instantiate(Skates, transform.position, transform.rotation, 4);
	skates.transform.parent = transform;
	rigidbody.angularVelocity == Vector3(0,0,0);
	rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;
	
	if(heavyIsActivated) SwitchHeavy();
	if(wingsAreActivated) SwitchWings();
}

function GetHeavyPowerUp(){
	HasHeavyPowerUp = true;
	HasRocketSkates = false;
	HasGlidePowerUp = false;
	collider.size.y = 1;
	collider.center.y = 0;
	collider.sharedMaterial = boxRollMaterial;
	rigidbody.constraints = RigidbodyConstraints.None;
	if(transform.childCount > 0){
		Network.Destroy(transform.GetChild(0).gameObject);
	}
	if(wingsAreActivated) SwitchWings();
	if(skatesAreActivated) SwitchSkates();
}

function DoSpecialAction(){
	if(HasGlidePowerUp){
		SwitchWings();
	} else if(HasRocketSkates){
		SwitchSkates();
	} else if(HasHeavyPowerUp){
		SwitchHeavy();
	}
}

function SwitchWings(){
	if(HasGlidePowerUp){
		if(!wingsAreActivated){
			wingsAreActivated = true;
			rigidbody.useGravity = false;
			transform.GetChild(0).GetComponent("WingsController").ActivateWings();
			syncHelper.switchMyWings(networkView.viewID, wingsAreActivated);
			transform.rotation = Quaternion.identity;
			rigidbody.angularVelocity = Vector3(0,0,0);
			rigidbody.constraints = RigidbodyConstraints.FreezePositionY || RigidbodyConstraints.FreezeRotationX || RigidbodyConstraints.FreezeRotationZ;
		} else {
			wingsAreActivated = false;
			rigidbody.useGravity = true;
			rigidbody.constraints = RigidbodyConstraints.None;
			transform.GetChild(0).GetComponent("WingsController").DeactivateWings();
			syncHelper.switchMyWings(networkView.viewID, wingsAreActivated);
		}
	} else {
		wingsAreActivated = false;
		rigidbody.useGravity = true;
		rigidbody.constraints = RigidbodyConstraints.None;
	}
}

function SwitchSkates(){
	if(HasRocketSkates){
		if(!skatesAreActivated){
			skatesAreActivated = true;
			rigidbody.useGravity = false;
			maxSpeed = skatesSpeed;
			transform.GetChild(0).GetComponent("JetSkates").TurnOnJets();
			transform.rotation = Quaternion.identity;
		} else {
			skatesAreActivated = false;
			rigidbody.useGravity = true;
			maxSpeed = originalMaxSpeed;
			transform.GetChild(0).GetComponent("JetSkates").TurnOffJets();
		}
	} else {
		skatesAreActivated = false;
		rigidbody.useGravity = true;
		maxSpeed = originalMaxSpeed;
		transform.GetChild(0).GetComponent("JetSkates").TurnOffJets();
	}
}

function SwitchHeavy(){
	if(HasHeavyPowerUp){
		if(!heavyIsActivated){
			heavyIsActivated = true;
			maxSpeed = originalMaxSpeed/2;
			gameObject.renderer.material.color = Color.gray;
		} else {
			heavyIsActivated = false;
			maxSpeed = originalMaxSpeed;
			gameObject.renderer.material.color = coloration;
		}
	} else {
		heavyIsActivated = false;
		maxSpeed = originalMaxSpeed;
		gameObject.renderer.material.color = coloration;
	}
}