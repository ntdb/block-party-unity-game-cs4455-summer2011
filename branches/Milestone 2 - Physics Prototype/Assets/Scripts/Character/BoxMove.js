// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed = 800;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

// Other things...
var Cam : GameObject;

// These variables are there for use by the script and don't need to be edited
private var state = 0;
private var grounded = false;
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

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{ 
    //rigidbody.freezeRotation = true;
}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		state ++;
		if(state > 0)
		{
			grounded = true;
		}
	}
}


function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 0){
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
	
    // Get the input and set variables for it
	if(allowInput){
		jump = Input.GetButtonDown("Jump");
		horizontal = Input.GetAxisRaw("Horizontal"); 
		vertical = Input.GetAxisRaw("Vertical");
		camSet = Input.GetAxisRaw("Fire1");
	}
	
	if(camSet > 0) {
		switch(direction) {
    	case("forward"):
    		lookRot = 0;
    		break;
    	case("right"):
    		lookRot = 90;
    		break;
    	case("backward"):
    		lookRot = 180;
    		break;
    	case("left"):
    		lookRot = 270;
    		break;
		}
	}

	if(rolling){
		Roll(direction);
	} else if(grounded) { // check for input
		if(vertical > 0) { // moving forward
			startRolling(lookRot == 0 ? "forward" : lookRot == 90 ? "right" : lookRot == 180 ? "backward" : lookRot == 270 ? "left" : "");
		} else if(vertical < 0) {      // moving back
			startRolling(lookRot == 0 ? "backward" : lookRot == 90 ? "left" : lookRot == 180 ? "forward" : lookRot == 270 ? "right" : "");


		} else if(horizontal > 0) {    // moving right
			startRolling(lookRot == 0 ? "right" : lookRot == 90 ? "backward" : lookRot == 180 ? "left" : lookRot == 270 ? "forward" : "");


		} else if(horizontal < 0) {    // moving left
			startRolling(lookRot == 0 ? "left" : lookRot == 90 ? "forward" : lookRot == 180 ? "right" : lookRot == 270 ? "backward" : "");
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

function startRolling(dir){
	if(direction != dir) {												//@@@@ This is a bit hacky....
		transform.rotation = Quaternion.identity;
		fwdWeight = 0.5;
		upWeight = -0.5;
	}
	
	direction = dir;
	rolling = true;
	allowInput = false;
	rigidbody.constraints = RigidbodyConstraints.FreezeAll;
	preRollPosition = transform.position;
	
	Roll(dir);
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

function Roll(rollDir : String) {
    var t : float; // temporary variable

    // we rotate around one of the edges of the cube (the stationary one of course)
    switch(rollDir) {
    	case("forward"):
   	 		transform.RotateAround(transform.position + (fwdWeight * transform.forward + upWeight * transform.up) * cubeSize,
   	 		Vector3.right, spinAmount);
    		break;
    	case("backward"):
      		transform.RotateAround(transform.position + (fwdWeight * -transform.forward + upWeight * transform.up) * cubeSize,
      		-Vector3.right, spinAmount);
    		break;
    	case("right"):
    		transform.RotateAround(transform.position + (fwdWeight * transform.right + upWeight * transform.up) * cubeSize,
    		-Vector3.forward, spinAmount);
    		break;
    	case("left"):
    	    transform.RotateAround(transform.position + (fwdWeight * -transform.right + upWeight * transform.up) * cubeSize,
    	    Vector3.forward, spinAmount);
    		break;
    }
	
    // add to amount of spin in this update the total rotation
    totalRotation += spinAmount;

    // check if we have to move to the next edge
    if (totalRotation >= 90) {
            // we move to next corner as pivot point
            totalRotation -= 90;
            t = fwdWeight;
            fwdWeight = -upWeight;
            upWeight = t;
            
            doneRolling(rollDir == "right" || rollDir == "left" ? "x" : "z");
    }
}