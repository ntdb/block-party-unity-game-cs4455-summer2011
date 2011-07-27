public var startPosition : Vector3;
public var destinationPosition : Vector3;
public var targetPosition : Vector3;
public var xAxisMovement : boolean = true;
public var isPositiveMoveDirection : boolean = true;
public var moveSpeed : float = 3.0;
private var waitingAtDestinationPosition : boolean = false;
private var pauseTimer : float = 0.0;
public var pauseDuration : float = 2.0;

function Activate(){
	if(Network.isServer)
		networkView.RPC("RPCActivateInternal", RPCMode.AllBuffered);
}

@RPC
function RPCActivateInternal(){
	targetPosition = destinationPosition;
}

function Update () {
	if(waitingAtDestinationPosition){
		pauseTimer += Time.deltaTime;
		if(pauseTimer >= pauseDuration){
			waitingAtDestinationPosition = false;
			pauseTimer = 0.0;
		}
	} else {
		if(xAxisMovement){
			if((Mathf.Abs(transform.position.x - targetPosition.x) > 0.2)){
				if(transform.position.x > targetPosition.x)
					transform.position.x -= Time.deltaTime * moveSpeed;
				else
					transform.position.x += Time.deltaTime * moveSpeed;
			} else {
				if(targetPosition == destinationPosition){
					waitingAtDestinationPosition = true;
					targetPosition = startPosition;
				}
			}
		} else { // zAxisMovement
			if(Mathf.Abs(transform.position.z - targetPosition.z) > 0.2){
				if(transform.position.z > targetPosition.z)
					transform.position.z -= Time.deltaTime * moveSpeed;
				else
					transform.position.z += Time.deltaTime * moveSpeed;
			} else {
				if(targetPosition == destinationPosition){
					waitingAtDestinationPosition = true;
					targetPosition = startPosition;
				}
			}
		}
	}
}