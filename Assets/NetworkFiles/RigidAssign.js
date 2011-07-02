
function OnNetworkInstantiate(msg : NetworkMessageInfo) {
	if(networkView.isMine)
	{
		var _NetworkRigidBody : NetworkRigidBody = GetComponent("NetworkRigidBody");
		_NetworkRigidBody.enabled = false;
	}
	else
	{
		name += "Remote";
		var _NetworkRigidBody2 : NetworkRigidBody = GetComponent("NetworkRigidBody");
		_NetworkRigidBody2.enabled = true;
	}
}

function Update () {
}