static private var forwardMoveDirection : Vector3 = Vector3(0, 0, 1.2);
static private var backMoveDirection : Vector3 = Vector3(0, 0, -1.2);
static private var leftMoveDirection : Vector3 = Vector3(-1.2, 0, 0);
static private var rightMoveDirection : Vector3 = Vector3(1.2, 0, 0);

static function Move (player : GameObject, maxSpeed : float, vertical : float,
								horizontal : float) {
	if(vertical > 0) { // moving forward
		if(player.rigidbody.velocity.z < maxSpeed){
			player.rigidbody.AddForceAtPosition(forwardMoveDirection, player.transform.position, ForceMode.VelocityChange);
			player.rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(vertical < 0) {      // moving back
		if(-player.rigidbody.velocity.z < maxSpeed){
			player.rigidbody.AddForceAtPosition(backMoveDirection, player.transform.position, ForceMode.VelocityChange);
			player.rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(horizontal > 0) {    // moving right
		if(player.rigidbody.velocity.x < maxSpeed){
			player.rigidbody.AddForceAtPosition(rightMoveDirection, player.transform.position, ForceMode.VelocityChange);
			player.rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
		}
	} else if(horizontal < 0) {    // moving left
		if(-player.rigidbody.velocity.x < maxSpeed){
			player.rigidbody.AddForceAtPosition(leftMoveDirection, player.transform.position, ForceMode.VelocityChange);
			player.rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationY;
		}
	} else {
		player.rigidbody.constraints = RigidbodyConstraints.FreezeRotationY;
	}
}