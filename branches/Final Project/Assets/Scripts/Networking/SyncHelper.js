var Wings : GameObject;
var Skates : GameObject;
private var coloration : Color = Color(.1451, .3843, .7255, 1);

function switchMyWings(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchWings", RPCMode.OthersBuffered, me, activating);
}

function switchMyHeavy(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchHeavy", RPCMode.OthersBuffered, me, activating);
}

function getWings(me : NetworkViewID){
	if(networkView.isMine)
		networkView.RPC("RPCGetWings", RPCMode.OthersBuffered, me);
}

function getHeavy(me : NetworkViewID){
	if(networkView.isMine)
		networkView.RPC("RPCGetHeavy", RPCMode.OthersBuffered, me);
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
function RPCSwitchHeavy(player : NetworkViewID, activating : boolean){
	var other : Transform = NetworkView.Find(player).transform;
	if (activating){
		other.gameObject.renderer.material.color = Color.gray;
	} else {
		other.gameObject.renderer.material.color = coloration;
	}
}

@RPC
function RPCGetWings(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.gameObject.renderer.material.color = coloration;
	other.rigidbody.rotation = Quaternion.identity;
	var wings : GameObject = Instantiate(Wings, Vector3(other.rigidbody.position.x, other.rigidbody.position.y - 0.5, other.rigidbody.position.z), other.rigidbody.rotation);
	wings.transform.parent = other;
}

@RPC
function RPCGetHeavy(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.GetChild(0).GetComponent("WingsController").DeactivateWings();
}