var Wings : GameObject;
var Skates : GameObject;

function switchMyWings(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchWings", RPCMode.OthersBuffered, me, activating);
}

function getWings(me : NetworkViewID){
	if(networkView.isMine)
		networkView.RPC("RPCGetWings", RPCMode.OthersBuffered, me);
}

@RPC
function RPCSwitchWings(player : NetworkViewID, activating : boolean){
	var other : Transform = NetworkView.Find(player).transform;
	if(activating){
		other.rigidbody.useGravity = false;
		if(other.childCount > 0)
			other.GetChild(0).GetComponent("WingsController").ActivateWings();
//		else 
//			Instantiate(Wings, other.position, other.rotation);
	} else {
		other.rigidbody.useGravity = true;
		other.GetChild(0).GetComponent("WingsController").DeactivateWings();
	}
}

@RPC
function RPCGetWings(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.rigidbody.rotation = Quaternion.identity;
	var wings : GameObject = Instantiate(Wings, Vector3(other.position.x, other.position.y - 0.5, other.position.z), other.rotation);
	wings.transform.parent = other;
}