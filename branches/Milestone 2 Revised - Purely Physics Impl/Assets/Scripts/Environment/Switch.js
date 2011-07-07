private var destinationHeight : float = 2.86;
private var startingHeight : float = 2.93;
private var moving : boolean = false;
private var doorOpen : boolean = false;
private var delta : float = 0.01;
var door : GameObject;

function OnCollisionEnter(boom : Collision){
	if(boom.collider.tag == "Player"){
		moving = true;
		if(!doorOpen){
			doorOpen = true;
			door.GetComponent("DoorOpener").OpenDoor();
		}
	}
}

function FixedUpdate(){
	if(moving && transform.position.y > destinationHeight)
		transform.position.y -= delta;
	else
		moving = false;

	if(!moving && transform.position.y < startingHeight)
		transform.position.y += delta;
}