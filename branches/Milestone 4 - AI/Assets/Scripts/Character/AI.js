// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

// These variables are for adjusting in the inspector how the object behaves 
var jumpSpeed = 5.000;

// Other things...
var collectible : GameObject;

// These variables are there for use by the script and don't need to be edited
private var cubeSpeed;
private var state = 0;
var groundedCounter = 10000;
private var grounded : boolean = true;
private var jumpLimit = 0;
private var fwdWeight : float = 0.5;
private var upWeight : float = -0.5;
private var totalRotation : float = 0; // determines if we're past the 90 degrees when rolling
private var rolling : boolean = false;
private var allowInput : boolean = false;
private var direction = "";
private var preRollPosition : Vector3;
private var spinAmount : float;
var lookRot : float;
private var forwardMoveDirection;
private var backMoveDirection;
private var leftMoveDirection;
private var rightMoveDirection;
private var trans : Transform;
private var maxSpeed;

private var vertical : float;
private var horizontal : float;
private var jump : float;

var triggerDistance : int;
var lcornerbound : Vector2;
var rcornerbound : Vector2;
private var player1 : Transform;
private var player2 : Transform;
private var running : boolean = false;
private var graph : Hashtable;

// Don't let the Physics Engine rotate this physics object so it doesn't fall over when running
function Awake ()
{ 
    forwardMoveDirection = Vector3(0, 0, 1.2);
	backMoveDirection = -forwardMoveDirection;
	leftMoveDirection = Vector3(-1.2, 0, 0);
	rightMoveDirection = -leftMoveDirection;
	var playerSpeed = BoxMove.maxSpeed;
	trans = transform;
	maxSpeed = playerSpeed * (trans.localScale.x + trans.localScale.y + trans.localScale.z) / 3;
	//print(maxSpeed);
	//print(maxSpeed / playerSpeed); 
	createGraph();
	//print(graph);
}

function AI () {
	running = true;
	var AIposition : Vector2 = Vector2(Mathf.Round(trans.position.x * 5) / 5, Mathf.Round(trans.position.z * 5) / 5);
	//print(AIposition);
	//var begin : Vector2;
	var end : Vector4 = Vector4(AIposition.x, AIposition.y, 0, 0);
	var queue : PriorityQueue = new PriorityQueue(player1, player2);
	var visited = new Hashtable();
	queue.push(end);
	//print("Begin: ");
	//queue.ret();
	//print(end);
	//print(search(graph, AIposition));
	//print(player1.position);
	while ((Vector3.Distance(player1.position, Vector3(end.x, player1.position.y, end.y)) < triggerDistance || 
			Vector3.Distance(player2.position, Vector3(end.x, player2.position.y, end.y)) < triggerDistance) && 
			queue.size() != 0) {
		end = queue.shift();
		//print("Select: " + end);
		/*print(Vector3.Distance(player.position, Vector3(end.x, player.position.y, end.y)));
		print(queue);*/
		if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5 - 1) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5) / 5) {
			end.w = 3;
			//print("n1");
		} else if (Mathf.Round(end.x * 5) / 5== Mathf.Round(AIposition.x * 5 + 1) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5) / 5) {
			end.w = 1;
			//print("n2");
		} else if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5 - 1) / 5) {
			end.w = 4;
			//print("n3");
		} else if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5 + 1) / 5) {
			end.w = 2;
			//print("n4");
		}
		if (!visited.Contains(Vector2(end.x, end.y))) {
			visited.Add(Vector2(end.x, end.y), null);
			//print(graph.Contains(Vector2(Mathf.Round(end.x * 5 - 1) / 5, end.y)));
			//print(graph.Contains(Vector2(Mathf.Round(end.x * 5 + 1) / 5, end.y)));
			//print(graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 - 1) / 5)));
			//print(graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 + 1) / 5)));
			if (graph.Contains(Vector2(Mathf.Round(end.x * 5 - 1) / 5, end.y)) &&
				!visited.Contains(Vector2(Mathf.Round(end.x * 5 - 1) / 5, end.y))) {
				queue.push(Vector4(Mathf.Round(end.x * 5 - 1) / 5, end.y, end.z + 0.2, end.w));
				//print("hello!1");
			}
			if (graph.Contains(Vector2(Mathf.Round(end.x * 5 + 1) / 5, end.y)) &&
				!visited.Contains(Vector2(Mathf.Round(end.x * 5 + 1) / 5, end.y))) {
				queue.push(Vector4(Mathf.Round(end.x * 5 + 1) / 5, end.y, end.z + 0.2, end.w));
				//print("hello!2");
			}
			if (graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 - 1) / 5)) &&
				!visited.Contains(Vector2(end.x, Mathf.Round(end.y * 5 - 1) / 5))) {
				queue.push(Vector4(end.x, Mathf.Round(end.y * 5 - 1) / 5, end.z + 0.2, end.w));
				//print("hello!3");
			}
			if (graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 + 1) / 5)) &&
				!visited.Contains(Vector2(end.x, Mathf.Round(end.y * 5 + 1) / 5))) {
				queue.push(Vector4(end.x, Mathf.Round(end.y * 5 + 1) / 5, end.z + 0.2, end.w));
				//print("hello!4");
			}
		}
		//queue = sort(queue);
		//print("Queue: ");
		//queue.ret();
	}
	//print("End: ");
	//queue.ret();
	if (end.w == 3) {
		horizontal = -1;
		vertical = 0;
	} else if (end.w == 1) {
		horizontal = 1;
		vertical = 0;
	} else if (end.w == 4) {
		vertical = -1;
		horizontal = 0;
	} else if (end.w == 2) {
		vertical = 1;
		horizontal = 0;
	}
	//print("v " + vertical + " h " + horizontal);
	/*var rand = Random.Range(1, 5);
	if (rand == 1) {
		vertical = 1;
		horizontal = 0;
	} else if (rand == 2) {
		vertical = -1;
		horizontal = 0;
	} else if (rand == 3) {
		horizontal = 1;
		vertical = 0;
	} else if (rand == 4) {
		horizontal = -1;
		vertical = 0;
	}
	yield WaitForSeconds(2);*/
	yield WaitForFixedUpdate;
	running = false;
}

function createGraph () {
	graph = new Hashtable();
	var rayhit : RaycastHit;
	var layerMask = ~(1 << 10);
	for (var i : float = lcornerbound.x * 5; i <= rcornerbound.x * 5; i ++) {
		for (var j : float = lcornerbound.y * 5; j <= rcornerbound.y * 5; j ++) {
			Physics.Raycast(Vector3(i / 5, 50, j / 5), -Vector3.up, rayhit, Mathf.Infinity, layerMask);
			if (!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.right,  trans.localScale.x / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.right,  trans.localScale.x / 2, layerMask)) {
				graph.Add(Vector2(i / 5,j / 5), "");
			}
		}
	}
	/*print(Physics.Raycast(Vector3(-28.4, 50, 21.8), -Vector3.up, rayhit, Mathf.Infinity, layerMask));
	print(!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.forward,  trans.localScale.z / 2, layerMask));
	print(!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.forward,  trans.localScale.z / 2, layerMask));
	print(!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.right,  trans.localScale.x / 2, layerMask));
	print(!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.right,  trans.localScale.x / 2, layerMask));*/
	/*print(graph.Contains(Vector2(-50.0, -50.0)));
	print(graph.Contains(Vector2(-50.0, -49.4)));
	print(graph.Contains(Vector2(-20.0, 0.0)));
	print(graph.Contains(Vector2(-19.8, 0.0)));
	print(graph.Contains(Vector2(-20.2, 0.0)));
	print(graph.Contains(Vector2(-20.0, -0.2)));
	print(graph.Contains(Vector2(-20.0, 0.2)));*/
}

class PriorityQueue {
	private var array : Array;
	private var player1 : Transform;
	private var player2 : Transform;
	
	function PriorityQueue(player1 : Transform, player2 : Transform) {
		array = new Array();
		this.player1 = player1;
		this.player2 = player2;
	}
	
	private function cost (state : Vector4) {
		/*print(state);
		print(Vector3.Distance(player.position, Vector3(state.x, state.y, player.position.y)));
		print(-Mathf.Pow(Vector3.Distance(player.position, Vector3(state.x, player.position.y, state.y)) + state.z * (4 / 3), 2));*/
		var player1cost : float = -Mathf.Pow(Vector3.Distance(player1.position, Vector3(state.x, player1.position.y, state.y)) + state.z * (4 / 3), 2);
		var player2cost : float = -Mathf.Pow(Vector3.Distance(player2.position, Vector3(state.x, player2.position.y, state.y)) + state.z * (4 / 3), 2);
		return ((player1cost > player2cost) ? player1cost : player2cost);
	}
	
	function push(v : Vector4) {
		//Debug.Log(v);
		var c = cost(v);
		//Debug.Log(c);
		var tc;
		var i = -1;
		for (i = array.length - 1; i >= 0; i--) {
			tc = cost(array[i]);
			//Debug.Log(tc);
			if (tc > c) {
				array[i + 1] = array[i];
			} else if (tc <= c) {
				array[i + 1] = v;
				break;
			}
		}
		if (i == -1) {
			array[0] = v;
		}
	}
	
	function shift() {
		return array.shift();
	}
	
	function size() {
		return array.length;
	}
	
	function ret() {
		Debug.Log(array);
		/*var a = array.ToBuiltin(Vector4);
		print(a);*/
	}
}

/*function search(array, item : Vector2) {
	for (var i = 0; i < array.length; i ++) {
		if (array[i] == item) {
			return 0;
		}
	}
	return -1;
}

function sort (array : Array) {
	//print("1 " + array);
	var arr : Vector4[] = array.ToBuiltin(Vector4);
	arr = msort(arr, 0, array.length - 1);
	array = new Array (arr);
	//print("2 " + array);
	return array;
}

function msort (array : Vector4[], begin : int, end : int) : Vector4[] {
	/*print("Array: " + new Array (array));
	print("Begin: " + begin);
	print("End: " + end);
	if (begin < end) {
		var index = begin;
		var index2 = begin + (end - begin) / 2 + 1;
		array = msort(array, begin, begin + (end - begin) / 2);
		//print("Array 1: " + new Array(array));
		array = msort(array, index2, end);
		//print("Array 2: " + new Array(array));
		var temp : Vector4[] = new Vector4[array.length];
		temp = array;
		for (i = begin; i <= end; i ++) {
			if (index == -1) {
				temp[i] = array[index2];
				index2++;
			} else if (index2 == -1) {
				temp[i] = array[index];
				index++;
			} else if (cost(array[index]) <= cost(array[index2])) {
				temp[i] = array[index];
				if (index < begin + (end - begin) / 2) {
					index++;
				} else {
					index = -1;
				}
			} else {
				temp[i] = array[index2];
				if (index2 < end) {
					index2 ++;
				} else {
					index2 = -1;
				}
			}
			//print("Temp: " + new Array(temp));
		}
		array = temp;
	}
	return array;
}*/

// This part detects whether or not the object is grounded and stores it in a variable
function OnCollisionEnter (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = true;
	}
}

function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = false;
		groundedCounter = 30;
	}
}

// This is called every physics frame
function FixedUpdate ()
{
	var players : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
	player1 = players[0].transform;
	if (players.length == 1) {
		player2 = players[0].transform;
	} else {
		print("herro!");
		player2 = players[1].transform;
	}
	/*print("1 " + Vector3.Distance(player1.position, trans.position));
	print("2 " + Vector3.Distance(player2.position, trans.position));
	print("3 " + triggerDistance);*/
    if (Vector3.Distance(player1.position, trans.position) < triggerDistance || Vector3.Distance(player2.position, trans.position) < triggerDistance) {
		if (!running) {AI();}
		
		UnitMove.Move(collectible, maxSpeed, vertical, horizontal);
		
		/*if(vertical > 0) { // moving forward
			if(rigidbody.velocity.z < maxSpeed){
				rigidbody.AddForceAtPosition(forwardMoveDirection, trans.position, ForceMode.VelocityChange);
				rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(vertical < 0) {      // moving back
			if(-rigidbody.velocity.z < maxSpeed){
				rigidbody.AddForceAtPosition(backMoveDirection, trans.position, ForceMode.VelocityChange);
				rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(horizontal > 0) {    // moving right
			if(rigidbody.velocity.x < maxSpeed){
				rigidbody.AddForceAtPosition(rightMoveDirection, trans.position, ForceMode.VelocityChange);
				rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
			}
		} else if(horizontal < 0) {    // moving left
			if(-rigidbody.velocity.x < maxSpeed){
				rigidbody.AddForceAtPosition(leftMoveDirection, trans.position, ForceMode.VelocityChange);
				rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
			}
		} else {
			rigidbody.constraints = RigidbodyConstraints.FreezeRotationY;
			trans.rotation = Quaternion.identity;
		}*/
			
		// This part is for jumping. I only let jump force be applied every 10 physics frames so
		// the player can't somehow get a huge velocity due to multiple jumps in a very short time
		if(jumpLimit < 10) jumpLimit ++;
	
		if(jump && (groundedCounter > 0 || grounded) && jumpLimit >= 10)
		{
			rigidbody.velocity.y += jumpSpeed;
			jumpLimit = 0;
		}
		
		if(groundedCounter > 0) groundedCounter--;
	}
 }