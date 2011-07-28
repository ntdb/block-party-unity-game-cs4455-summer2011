
function Awake(){
	if(!networkView.isMine){
		enabled = false;
	}
}

function OnCollisionEnter(collision : Collision){
	transform.parent.GetComponent("BoxMove").collisionEnterProxy(collision);
}

function OnCollisionExit(collision : Collision){
	transform.parent.GetComponent("BoxMove").collisionExitProxy(collision);
}