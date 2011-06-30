// These variables are for adjusting in the inspector how the object behaves 
var cubeSpeed = 80;
var cubeSize : float = 1;
var jumpSpeed = 5.000;

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

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{ 
    //rigidbody.freezeRotation = true;
}

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
    state ++;
    if(state > 0)
    {
        grounded = true;
    }
	
	if(rolling)
		Debug.Log("hitting: " + collision.collider.gameObject);
}


function OnCollisionExit ()
{
state --;
    if(state < 1)
    {
        grounded = false;
        state = 0;
    }
}

// This is called every physics frame
function FixedUpdate ()
{
    // Get the input and set variables for it
	if(allowInput){
		jump = Input.GetButtonDown ("Jump");
		horizontal = Input.GetAxis("Horizontal"); 
		vertical = Input.GetAxis("Vertical");
	}

	if(rolling){
		switch(direction){
			case "forward" : RollForward(); break;
			case "backward" : RollBackward(); break;
			case "left" : RollLeft(); break;
			case "right" : RollRight(); break;
			default : Debug.Log("asked to roll an invalid direction: " + direction);
		}
	} else { // check for input
		if(vertical > 0){ // moving forward
			preRollPosition = transform.position;
			startRolling("forward");
			RollForward();
		} else if(vertical < 0){      // moving back
			startRolling("backward");
			RollBackward();
		} else if(horizontal > 0){    // moving right
			startRolling("right");
			RollRight();
		} else if(horizontal < 0){    // moving left
			startRolling("left");
			RollLeft();
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
    var spinAmount : float = Time.deltaTime * cubeSpeed;
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
    var spinAmount : float = Time.deltaTime * cubeSpeed;
    var t : float; // temporary variable
	
	// store the height at the start of the roll so we can correct it as we roll
	var startPos : Vector3 = transform.position;
	
    // we rotate around one of the edges of the cube (the stationary one of course)
    transform.RotateAround(transform.position + (fwdWeight * -1 * transform.forward + upWeight * -1 * transform.up) * cubeSize, Vector3.right, spinAmount);
	
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

function RollLeft(){
}

function RollRight(){
}