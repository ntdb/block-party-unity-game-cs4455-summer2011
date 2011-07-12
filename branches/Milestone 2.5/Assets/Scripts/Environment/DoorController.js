var openHeight : float = -3.3;
var startHeight : float = 8.25;
var targetHeight = startHeight;

function OpenDoor(){
	targetHeight = openHeight;
}

function FixedUpdate(){
	if(transform.position.y > targetHeight)
		transform.position.y -= 0.1;
	else if(transform.position.y < targetHeight)
		transform.position.y = targetHeight;
}