var coloration : Color = Color(.1451, .3843, .7255, 1);;

function switchMySkates(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchSkates", RPCMode.OthersBuffered, me, activating);
}

function switchMyWings(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchWings", RPCMode.OthersBuffered, me, activating);
}

function switchMyHeavy(me : NetworkViewID, activating : boolean){
	if(networkView.isMine)
		networkView.RPC("RPCSwitchHeavy", RPCMode.AllBuffered, me, activating);
}

function firePowerup(me: NetworkViewID, activating : boolean, powerupFunction : String){
	networkView.RPC("RPCServerFirePowerup", RPCMode.Server, me, activating, powerupFunction);
}

@RPC
function RPCServerFirePowerup(player : NetworkViewID, activating : boolean, powerupFunction : String){
	networkView.RPC(powerupFunction, RPCMode.AllBuffered, player, activating);
}

@RPC
function RPCSwitchSkates(player : NetworkViewID, activating : boolean){
	var other : Transform = NetworkView.Find(player).transform;
	if(activating){
		other.GetChild(0).GetComponent("JetSkates").TurnOnJets();
	} else {
		other.GetChild(0).GetComponent("JetSkates").TurnOffJets();
	}
}

@RPC
function RPCSwitchWings(player : NetworkViewID, activating : boolean){
	var other : Transform = NetworkView.Find(player).transform;
	if(activating){
		other.rigidbody.useGravity = false;
		other.GetChild(1).GetComponent("WingsController").ActivateWings();
	} else {
		other.rigidbody.useGravity = true;
		other.GetChild(1).GetComponent("WingsController").DeactivateWings();
	}
}

@RPC
function RPCSwitchHeavy(player : NetworkViewID, activating : boolean){
	var other : Transform = NetworkView.Find(player).transform;
	if(activating){
		other.gameObject.renderer.material.color = Color.gray;
	} else {
		other.gameObject.renderer.material.color = coloration;
	}
}

function getGlidePowerUp(player : NetworkViewID){
	if(networkView.isMine){
		networkView.RPC("RPCgetGlider", RPCMode.OthersBuffered, player);
	}
}

@RPC
function RPCgetGlider(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.collider.size.y = 1;
	other.collider.center.y = 0;
	other.rigidbody.constraints = RigidbodyConstraints.None;
	other.GetChild(0).localPosition = Vector3(0.0, 0.65, 0.0);
}

function getRocketSkates(player : NetworkViewID){
	if(networkView.isMine){
		networkView.RPC("RPCgetRocketSkates", RPCMode.OthersBuffered, player);
	}
}

@RPC
function RPCgetRocketSkates(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.collider.size.y = 1.6;
	other.collider.center.y = -0.3;
	other.rigidbody.constraints = rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;
	other.GetChild(0).localPosition = Vector3(0.0, 0.0, 0.0);
	other.rigidbody.angularVelocity == Vector3(0,0,0);
}

function getHeavyPowerUp(player : NetworkViewID){
	if(networkView.isMine){
		networkView.RPC("RPCgetHeavy", RPCMode.OthersBuffered, player);
	}
}

@RPC
function RPCgetHeavy(player : NetworkViewID){
	var other : Transform = NetworkView.Find(player).transform;
	other.collider.size.y = 1;
	other.collider.center.y = 0;
	other.rigidbody.constraints = RigidbodyConstraints.None;
	other.GetChild(0).localPosition = Vector3(0.0, 0.65, 0.0);
}