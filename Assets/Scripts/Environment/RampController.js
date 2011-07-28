public var startPosition : float;
public var destinationPosition : float;
public var targetPosition : float;
public var xAxisMovement : boolean = true;
public var moveSpeed : float = 3.0;
private var waitingAtDestinationPosition : boolean = false;
private var pauseTimer : float = 0.0;
public var pauseDuration : float = 2.0;
private var act : boolean = false;

function Activate(){
	if(Network.isServer)
		networkView.RPC("RPCActivateInternal", RPCMode.AllBuffered);
}

@RPC
function RPCActivateInternal(){
	targetPosition = destinationPosition;
	act = true;
}

function Update () {
	if(waitingAtDestinationPosition){
		pauseTimer += Time.deltaTime;
		if(pauseTimer >= pauseDuration){
			waitingAtDestinationPosition = false;
			pauseTimer = 0.0;
			act = true;
		}
	} else if (act) {
		if(xAxisMovement){
			if(!Mathf.Approximately(transform.position.x, targetPosition)) {
				rigidbody.MovePosition(Vector3(Mathf.MoveTowards(transform.position.x, targetPosition, moveSpeed * Time.deltaTime), rigidbody.position.y, rigidbody.z));
			} else {
				if(targetPosition == destinationPosition){
					waitingAtDestinationPosition = true;
					targetPosition = startPosition;
					act = false;
				}
			}
		} else { // zAxisMovement
			Debug.Log("targetposition: " + targetPosition + ", currentposition: " + transform.position.z);
			if(!Mathf.Approximately(transform.position.z, targetPosition)) {
				rigidbody.MovePosition(Vector3(rigidbody.position.x, rigidbody.position.y, Mathf.MoveTowards(transform.position.z, targetPosition, moveSpeed * Time.deltaTime)));
			} else {
				if(targetPosition == destinationPosition){
					waitingAtDestinationPosition = true;
					targetPosition = startPosition;
					act = false;
				}
			}
		}
	}
}