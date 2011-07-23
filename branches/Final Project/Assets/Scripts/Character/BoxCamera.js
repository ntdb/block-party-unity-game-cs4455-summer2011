// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var target : Transform;
var player : BoxMove;
private var yRot : float = 0;
var distance = 10.0;
private var height : float = 7;

function LateUpdate () {
	if(GameObject.FindWithTag("Player")){
		target = GameObject.FindWithTag("Player").transform;
		
		var camRot =  target.GetComponent(BoxMove).camRot;
		
		yRot = yRot < camRot ? yRot + 3 : yRot;
		yRot = yRot > camRot ? yRot - 3 : yRot;
		
		if (target) {
				
			var rotation = Quaternion.Euler(30, yRot, 0);
			var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
			
			position.y = target.position.y + height;
			
			transform.position = position;
			transform.rotation = rotation;
		}
	}
}