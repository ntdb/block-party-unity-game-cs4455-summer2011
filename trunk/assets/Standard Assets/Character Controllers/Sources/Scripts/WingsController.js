var speed = 90;
var leftJoint : Transform;
var rightJoint : Transform;

function ActivateWings(){
	leftJoint.localEulerAngles = Vector3(0,0,0);
	rightJoint.localEulerAngles = Vector3(0,0,0);
}

function DeactivateWings(){
	leftJoint.localEulerAngles = Vector3(0,0,-90);
	rightJoint.localEulerAngles = Vector3(0,0,90);
}