var follow : GameObject;
private var target : Transform;
private var yRot : float = 0;
var distance = 10.0;

function Start () {
	target = follow.transform;
}

function LateUpdate () {
	
	var lookRot = follow.GetComponent("BoxMove").lookRot;
	if(yRot != lookRot) {
		yRot = yRot == 0 && lookRot == 270 ? 360 : yRot;
		if(yRot - lookRot < 0 || (lookRot == 0 && yRot >= 180)) {
			yRot += 3;
			yRot = yRot == 360 ? 0 : yRot;
		}
		else {
			yRot -= 3;
		}
	}
	
    if (target) {
        var rotation = Quaternion.Euler(transform.eulerAngles.x, yRot, 0);
        var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
        
        position.y = 3.5;
        
        transform.position = position;
        transform.rotation = rotation;
    }
}