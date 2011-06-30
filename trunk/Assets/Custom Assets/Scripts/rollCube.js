var cubeSize : float = 1; 
var cubeSpeed : float = 80;

private var totalRotation : float = 0; // determines if we're past the 90 degrees
private var startHeight : float = 0; // for correcting height errors

// next two vars are for determining the corner
// to rotate over
private var fwdWeight : float = 0.5;
private var upWeight : float = -0.5; 


// Use this for initialization
function Start () {
    startHeight = transform.position.y;
}

// Update is called once per frame
function Update () {

    DoRoll(2);

}

function DoRoll (delay: float) {
    var spinAmount : float = Time.deltaTime * cubeSpeed;
    var t : float;
    var pos : Vector3;

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

            // make sure height stays correct
            pos = transform.position;
            //pos.y = startHeight;
            transform.position = pos;
            print ("At rotation " + totalRotation);
            yield WaitForSeconds(delay);

    }
}