// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed = 800;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// These variables are there for use by the script and don't need to be edited
private var state = 0;
private var grounded = false;
private var jumpLimit = 0;
 var fwdWeight : float = 0.5;
 var upWeight : float = -0.5;
private var totalRotation : float = 0; // determines if we're past the 90 degrees when rolling
private var rolling : boolean = false;
private var allowInput : boolean = true;
private var direction = "";
private var preRollPosition : Vector3;
private var spinAmount : float;

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{ 
    //rigidbody.freezeRotation = true;
}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	if(collision.collider.gameObject.layer == 0){
		state ++;
		if(state > 0)
		{
			grounded = true;
		}
	}
}


function OnCollisionExit (collision : Collision)
{
	if(collision.collider.gameObject.layer == 0){
		state --;
		if(state < 1)
		{
			grounded = false;
			state = 0;
		}
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	spinAmount = Time.deltaTime * cubeSpeed;
	
	if(rolling){
		switch(direction){
			case "left" : RollLeft(); break;
			case "right" : RollRight(); break;
			case "forward" : RollForward(); break;
			case "backward" : RollBackward(); break;
			default : Debug.Log("asked to roll an invalid direction: " + direction);
		}
	} else if(grounded) { // check for input
		
		// Get the input and set variables for it
		if(allowInput){
			jump = Input.GetButtonDown ("Jump");
			vertical = Input.GetAxisRaw("Vertical");
			horizontal = Input.GetAxisRaw("Horizontal"); 
		}
		
		if(horizontal > 0){    // moving right
			startRolling("right");
			castRayGetDestination("right");
			RollRight();
		} else if(horizontal < 0){    // moving left
			startRolling("left");
			castRayGetDestination("left");
			RollLeft();
		} else if(vertical > 0){ // moving forward
			startRolling("forward");
			castRayGetDestination("forward");
			RollForward();
		} else if(vertical < 0){      // moving back
			startRolling("backward");
			castRayGetDestination("backward");
			RollBackward();
		}

		// This part is for jumping. I only let jump force be applied every 10 physics frames so
		// the player can't somehow get a huge velocity due to multiple jumps in a very short time
		if(jumpLimit < 10) jumpLimit ++;

		if(jump && grounded == true && jumpLimit >= 10)
		{
			rigidbody.velocity.y += jumpSpeed;
			jumpLimit = 0;
		}
	 } // end input checking
 }
 
 function castRayGetDestination(dir){
	//var 
 }

function startRolling(dir){
	if(direction != dir) {									//This is a bit hacky....
		transform.rotation = Quaternion.identity;
		fwdWeight = 0.5;
		upWeight = -0.5;
	}
	direction = dir;
	rolling = true;
	allowInput = false;
	rigidbody.constraints = RigidbodyConstraints.FreezeAll;
	preRollPosition = transform.position;
}

function correctRollingPosition(previousPosition : Vector3, variableDirection){
	switch(variableDirection){
		case "x": transform.position = Vector3(transform.position.x, previousPosition.y, previousPosition.z); break;
		case "y": transform.position = Vector3(previousPosition.x, transform.position.y, previousPosition.z); break;
		case "z": transform.position = Vector3(previousPosition.x, previousPosition.y, transform.position.z); break;
		default: Debug.Log("Invalid static direction requested: " + variableDirection); break;
	}
}

function doneRolling(staticDirection){
	rolling = false;
	allowInput = true;
	rigidbody.constraints = RigidbodyConstraints.None;
	correctRollingPosition(preRollPosition, staticDirection);
}

 function RollForward () {
    var t : float; // temporary variable
	
	// store the height at the start of the roll so we can correct it as we roll
	var startPos : Vector3 = transform.position;
	
    // we rotate around one of the edges of the cube (the stationary one of course)
    transform.RotateAround(transform.position + (fwdWeight * transform.forward + upWeight * transform.up) * cubeSize, Vector3.right, spinAmount);
	
    // add to amount of spin in this update the total rotation
    totalRotation += spinAmount;

    // check if we have to move to the next edge
    if (totalRotation >= 90) {
            // we move to next corner as pivot point
            totalRotation -= 90;
            t = fwdWeight;
            fwdWeight = -upWeight;
            upWeight = t;

			doneRolling("z");
    }
}

function RollBackward(){
    var t : float; // temporary variable
	
	// store the height at the start of the roll so we can correct it as we roll
	var startPos : Vector3 = transform.position;
	
    // we rotate around one of the edges of the cube (the stationary one of course)
    transform.RotateAround(transform.position + (fwdWeight * -1 * transform.forward + upWeight * transform.up) * cubeSize, -1 * Vector3.right, spinAmount);
	
    // add to amount of spin in this update the total rotation
    totalRotation += spinAmount;

    // check if we have to move to the next edge
    if (totalRotation >= 90) {
            // we move to next corner as pivot point
            totalRotation -= 90;
            t = fwdWeight;
            fwdWeight = -upWeight;
            upWeight = t;

			doneRolling("z");
    }
}

function RollLeft() {
    var t : float; // temporary variable
	
	// store the height at the start of the roll so we can correct it as we roll
	var startPos : Vector3 = transform.position;
	
    // we rotate around one of the edges of the cube (the stationary one of course)
    transform.RotateAround(transform.position + (fwdWeight * -1 * transform.right + upWeight * transform.up) * cubeSize, Vector3.forward, spinAmount);
	
    // add to amount of spin in this update the total rotation
    totalRotation += spinAmount;

    // check if we have to move to the next edge
    if (totalRotation >= 90) {
            // we move to next corner as pivot point
            totalRotation -= 90;
            t = fwdWeight;
            fwdWeight = -upWeight;
            upWeight = t;

			doneRolling("x");
    }
}

function RollRight() {
    var t : float; // temporary variable
	
	// store the height at the start of the roll so we can correct it as we roll
	var startPos : Vector3 = transform.position;
	
    // we rotate around one of the edges of the cube (the stationary one of course)
    transform.RotateAround(transform.position + (fwdWeight * transform.right + upWeight * transform.up) * cubeSize, -1 * Vector3.forward, spinAmount);
	
    // add to amount of spin in this update the total rotation
    totalRotation += spinAmount;

    // check if we have to move to the next edge
    if (totalRotation >= 90) {
            // we move to next corner as pivot point
            totalRotation -= 90;
            t = fwdWeight;
            fwdWeight = -upWeight;
            upWeight = t;

			doneRolling("x");
    }
}