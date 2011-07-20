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

// These variables are there for use by the script and don't need to be edited
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
	createGraph();
}

// Runs A* and controls movement
function AI () {
	running = true;
	
	var AIposition : Vector2 = Vector2(Mathf.Round(trans.position.x * 5) / 5, Mathf.Round(trans.position.z * 5) / 5);
	var end : Vector4 = Vector4(AIposition.x, AIposition.y, 0, 0);
	var queue : PriorityQueue = new PriorityQueue(player1, player2);
	var visited = new Hashtable();
	
	queue.push(end);
	
	// Check Goal Conditions
	while ((Vector3.Distance(player1.position, Vector3(end.x, player1.position.y, end.y)) < triggerDistance || 
			Vector3.Distance(player2.position, Vector3(end.x, player2.position.y, end.y)) < triggerDistance) && 
			queue.size() != 0) {
		
		end = queue.shift();
		
		if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5 - 1) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5) / 5) {
			end.w = 3;
		} else if (Mathf.Round(end.x * 5) / 5== Mathf.Round(AIposition.x * 5 + 1) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5) / 5) {
			end.w = 1;
		} else if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5 - 1) / 5) {
			end.w = 4;
		} else if (Mathf.Round(end.x * 5) / 5 == Mathf.Round(AIposition.x * 5) / 5 && Mathf.Round(end.y * 5) / 5 == Mathf.Round(AIposition.y * 5 + 1) / 5) {
			end.w = 2;
		}
		
		// Check if node has been visited
		if (!visited.Contains(Vector2(end.x, end.y))) {
		
			visited.Add(Vector2(end.x, end.y), null);
			
			if (graph.Contains(Vector2(Mathf.Round(end.x * 5 - 1) / 5, end.y)) &&
				!visited.Contains(Vector2(Mathf.Round(end.x * 5 - 1) / 5, end.y))) {
				queue.push(Vector4(Mathf.Round(end.x * 5 - 1) / 5, end.y, end.z + 0.2, end.w));
			}
			
			if (graph.Contains(Vector2(Mathf.Round(end.x * 5 + 1) / 5, end.y)) &&
				!visited.Contains(Vector2(Mathf.Round(end.x * 5 + 1) / 5, end.y))) {
				queue.push(Vector4(Mathf.Round(end.x * 5 + 1) / 5, end.y, end.z + 0.2, end.w));
			}
			
			if (graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 - 1) / 5)) &&
				!visited.Contains(Vector2(end.x, Mathf.Round(end.y * 5 - 1) / 5))) {
				queue.push(Vector4(end.x, Mathf.Round(end.y * 5 - 1) / 5, end.z + 0.2, end.w));
			}
			
			if (graph.Contains(Vector2(end.x, Mathf.Round(end.y * 5 + 1) / 5)) &&
				!visited.Contains(Vector2(end.x, Mathf.Round(end.y * 5 + 1) / 5))) {
				queue.push(Vector4(end.x, Mathf.Round(end.y * 5 + 1) / 5, end.z + 0.2, end.w));
			}
		}
	}
	
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
	yield WaitForFixedUpdate;
	running = false;
}

// Builds a waypoint graph
// Note: Running time is awful. Needs to be replaced with something more efficient. A Mesh, maybe?
function createGraph () {
	graph = new Hashtable();
	var rayhit : RaycastHit;
	var layerMask = ~(1 << 10);
	for (var i : float = lcornerbound.x * 5; i <= rcornerbound.x * 5; i ++) {
		for (var j : float = lcornerbound.y * 5; j <= rcornerbound.y * 5; j ++) {
			// Cast some rays to weed out undesireable locations
			Physics.Raycast(Vector3(i / 5, 50, j / 5), -Vector3.up, rayhit, Mathf.Infinity, layerMask);
			if (!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.forward,  trans.localScale.z / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), Vector3.right,  trans.localScale.x / 2, layerMask) &&
				!Physics.Raycast(rayhit.point + (Vector3.up * trans.localScale.y / 2), -Vector3.right,  trans.localScale.x / 2, layerMask)) {
				graph.Add(Vector2(i / 5,j / 5), "");
			}
		}
	}
}

// A priority queue
class PriorityQueue {
	private var array : Array;
	private var player1 : Transform;
	private var player2 : Transform;
	
	function PriorityQueue(player1 : Transform, player2 : Transform) {
		array = new Array();
		this.player1 = player1;
		this.player2 = player2;
	}
	
	// Cost function for sorting
	private function cost (state : Vector4) {
		var player1cost : float = -Mathf.Pow(Vector3.Distance(player1.position, Vector3(state.x, player1.position.y, state.y)) + state.z * (4 / 3), 2);
		var player2cost : float = -Mathf.Pow(Vector3.Distance(player2.position, Vector3(state.x, player2.position.y, state.y)) + state.z * (4 / 3), 2);
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
}

/* This part detects whether or not the object is grounded and stores it in a variable
	It also determines whether the object has collided with the player, and  if so, destroys it*/
function OnCollisionEnter (collision : Collision)
{
	if(collision.gameObject.layer == 0){
		grounded = true;
		if (collision.gameObject.CompareTag("Player")) {
			Network.Destroy(collectible);
		}
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
		// Run only if AI is not already running
		if (!running) {AI();}
		
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