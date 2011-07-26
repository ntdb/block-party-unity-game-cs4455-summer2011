public var startPosition : Vector3;
public var destinationPosition : Vector3;
public var targetPosition : Vector3;
public var xAxisMovement : boolean = true;
public var isPositiveMoveDirection : boolean = true;
public var moveSpeed : float = 3.0;
private var reachedDestination : boolean = false;
private var pauseTimer : float = 0.0;

function Activate(){
	targetPosition = destinationPosition;
}

function Update () {
	if(xAxisMovement){
		if(reachedDestination){
			
		} else if((Mathf.Abs(transform.position.x - targetPosition.x) > 0.2){
			if(transform.position.x > targetPosition.x)
				transform.position.x -= Time.deltaTime * moveSpeed;
			else
				transform.position.x += Time.deltaTime * moveSpeed;
		} else {
			reachedDestination = true;
		}
	} else { // zAxisMovement
		if(Mathf.Abs(transform.position.z - targetPosition.z) > 0.2){
			if(transform.position.z > targetPosition.z)
				transform.position.z -= Time.deltaTime * moveSpeed;
			else
				transform.position.z += Time.deltaTime * moveSpeed;
		}
	}
}