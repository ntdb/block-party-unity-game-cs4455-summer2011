// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

// These variables are for adjusting in the inspector how the object behaves 
var jumpSpeed = 5.000;
var collectible : GameObject;
var triggerDistance : int = 12;
var lcornerbound : Vector2;
var rcornerbound : Vector2;
var gridSpace : int = 5;

// These variables are there for use by the script and don't need to be edited
private var gridSize : float;
private var groundedCounter = 10000;
private var grounded : boolean = true;
private var jumpLimit = 0;
private var trans : Transform;
private var maxSpeed;
private var vertical : float;
private var horizontal : float;
private var jump : float;
private var player1 : Transform;
private var player2 : Transform;
private var running : boolean = false;
private var graph : Hashtable;

// Initialize certain variables
function Awake ()
{ 
	var playerSpeed = BoxMove.maxSpeed;
	trans = transform;
	maxSpeed = playerSpeed * (trans.localScale.x + trans.localScale.y + trans.localScale.z) / 3;
	gridSize = 1.0 / gridSpace;
	createGraph();
}

// Runs A* and controls movement
function AI () {
	running = true;
	
	var AIposition : Vector2 = Vector2(Mathf.Round(trans.position.x / gridSize), Mathf.Round(trans.position.z / gridSize));
	var end : Vector4 = Vector4(AIposition.x, AIposition.y, 0, 0);
	var queue : PriorityQueue = new PriorityQueue(player1, player2, gridSize);
	var visited = new Hashtable();
	
	queue.push(end);
	
	//Debug.Log(Vector3.Distance(player1.position, Vector3(end.x, player1.position.y, end.y)) < triggerDistance);
	//Debug.Log(Vector3.Distance(player2.position, Vector3(end.x, player2.position.y, end.y)) < triggerDistance);
	//Debug.Log(queue.size() != 0);
	//Debug.Log("Begin: ");
	//queue.toString();
	
	// Check Goal Conditions
	while ((Vector3.Distance(player1.position, Vector3(end.x * gridSize, player1.position.y, end.y * gridSize)) < triggerDistance || 
			Vector3.Distance(player2.position, Vector3(end.x * gridSize, player2.position.y, end.y * gridSize)) < triggerDistance) && 
			queue.size() != 0) {
		//Debug.Log("Hello");
		end = queue.shift();
		//Debug.Log("Select: " + end);
		
		if (end.x == AIposition.x - 1 && end.y == AIposition.y) {
			end.w = 3;
		} else if (end.x == AIposition.x + 1 && end.y == AIposition.y) {
			end.w = 1;
		} else if (end.x == AIposition.x && end.y == AIposition.y - 1) {
			end.w = 4;
		} else if (end.x == AIposition.x && end.y == AIposition.y + 1) {
			end.w = 2;
		}
		
		// Check if node has been visited
		if (!visited.Contains(Vector2(end.x, end.y))) {
			visited.Add(Vector2(end.x, end.y), null);
			
			/*var adj : Array = graph[Vector2(end.x, end.y)];
			
			//Debug.Log(adj);
			
			for (var i : Vector2 in adj) {
				if (!visited.Contains(i)) {
					queue.push(Vector4(i.x, i.y, end.z + gridSize, end.w));
				}
			}*/
			
			if (graph.Contains(Vector2(end.x - 1, end.y)) &&
				!visited.Contains(Vector2(end.x - 1, end.y))) {
				queue.push(Vector4(end.x - 1, end.y, end.z + gridSize, end.w));
			}
			
			if (graph.Contains(Vector2(end.x + 1, end.y)) &&
				!visited.Contains(Vector2(end.x + 1, end.y))) {
				queue.push(Vector4(end.x + 1, end.y, end.z + gridSize, end.w));
			}
			
			if (graph.Contains(Vector2(end.x, end.y - 1)) &&
				!visited.Contains(Vector2(end.x, end.y - 1))) {
				queue.push(Vector4(end.x, end.y - 1, end.z + gridSize, end.w));
			}
			
			if (graph.Contains(Vector2(end.x, end.y + 1)) &&
				!visited.Contains(Vector2(end.x, end.y + 1))) {
				queue.push(Vector4(end.x, end.y + 1, end.z + gridSize, end.w));
			}
		}
		//Debug.Log("Queue: ");
		//queue.toString();
	}
	
	//Debug.Log("End: " + end);
	
	// Set movement
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
	
	// Wait for the next physics frame
	yield WaitForEndOfFrame;
	running = false;
}

// Builds a waypoint graph
// Note: Running time is awful. Needs to be replaced with something more efficient. A Mesh, maybe?
function createGraph () {
	graph = new Hashtable();
	var rayhit : RaycastHit;
	var layerMask = ~(1 << 10);
	var temp : Array;
	for (var i : float = lcornerbound.x / gridSize; i <= rcornerbound.x / gridSize; i ++) {
		for (var j : float = lcornerbound.y / gridSize; j <= rcornerbound.y / gridSize; j ++) {
			// Cast some rays to weed out undesireable locations
			Physics.Raycast(Vector3(i * gridSize, 50, j * gridSize), -Vector3.up, rayhit, Mathf.Infinity, layerMask);
			if (!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.right,  trans.localScale.x / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.right,  trans.localScale.x / 2, layerMask)) {
				/*var adj : Array = new Array();
				if (graph.Contains(Vector2(i - 1, j))) {
					adj.push(Vector2(i - 1, j));
					temp = graph[Vector2(i - 1, j)];
					temp.push(Vector2(i,j));
					graph[Vector2(i - 1, j)] = temp;
				}
				if (graph.Contains(Vector2(i, j - 1))) {
					adj.push(Vector2(i, j - 1));
					temp = graph[Vector2(i, j - 1)];
					temp.push(Vector2(i,j));
					graph[Vector2(i, j - 1)] = temp;
				}*/
				graph.Add(Vector2(i, j), null /*adj*/);
			}
		}
	}
}

// A priority queue
class PriorityQueue {
	private var array : Array;
	private var player1 : Transform;
	private var player2 : Transform;
	private var gridSize : float;
	
	function PriorityQueue(player1 : Transform, player2 : Transform, gridSize : float) {
		array = new Array();
		this.gridSize = gridSize;
		this.player1 = player1;
		this.player2 = player2;
	}
	
	// Cost function for sorting. The state.z term is the distance the AI has travelled thus far. The
	// player is faster, so he is presumed to have travelled 25% farther over the same period of time,
	// thus shrinking the distance between the two. A positive cost
	private function cost (state : Vector4) {
		var player1cost : float = -(Vector3.Distance(player1.position, Vector3(state.x * gridSize, player1.position.y, state.y * gridSize)) - state.z * (5 / 4));
		var player2cost : float = -(Vector3.Distance(player2.position, Vector3(state.x * gridSize, player2.position.y, state.y * gridSize)) - state.z * (5 / 4));
		if (player1cost > 0) {
			player1cost = 100;
		} if (player2cost > 0) {
			player2cost = 100;
		}
		return ((player1cost > player2cost) ? player1cost : player2cost);
	}
	
	function push(v : Vector4) {
		var c = cost(v);
		var tc;
		var i = -1;
		for (i = array.length - 1; i >= 0; i--) {
			tc = cost(array[i]);
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
	
	function toString() {
		Debug.Log(array);
	}
}

/* This part detects whether or not the object is grounded and stores it in a variable
	It also determines whether the object has collided with the player, and  if so, destroys it*/
function OnCollisionEnter (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = true;
	} else if (collision.gameObject.layer == 11 && Network.isServer) {
			Network.Destroy(collectible);
	}
}

// See the first half of the OnCollisionEnter comment
function OnCollisionExit (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = false;
		groundedCounter = 30;
	}
}

function Update() {
	// Run only if AI is not already running
	if (!running && (Vector3.Distance(player1.position, trans.position) < triggerDistance || Vector3.Distance(player2.position, trans.position) < triggerDistance)) {AI();}
}

// This is called every physics frame
function FixedUpdate ()
{
	var players : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
	player1 = players[0].transform;
	
	// Check if player 2 has joined
	if (players.length == 1) {
		player2 = players[0].transform;
	} else {
		player2 = players[1].transform;
	}
	
	// Run this portion only if a player is wihin a certain radius
    if (Vector3.Distance(player1.position, trans.position) < triggerDistance || Vector3.Distance(player2.position, trans.position) < triggerDistance) {
		
		UnitMove.Move(collectible, maxSpeed, vertical, horizontal);
			
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