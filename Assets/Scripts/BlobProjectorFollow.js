var target : Transform;
var height = 10;

function Awake() {
	transform.parent = null;
}

function Update () {
	transform.position.x = target.position.x;
	transform.position.y = target.position.y + height;
	transform.position.z = target.position.z;
}

function OnPlayerDisconnected (player : NetworkPlayer) {
	if(!networkView.isMine) {
		Destroy(this);
	}
}

@script RequireComponent(NetworkView)