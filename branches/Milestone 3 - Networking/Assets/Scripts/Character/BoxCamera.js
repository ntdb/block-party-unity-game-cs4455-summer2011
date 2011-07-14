// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var target : Transform;
private var yRot : float = 0;
var distance = 10.0;
private var height : float = 3.5;

function LateUpdate () {
	if(GameObject.FindWithTag("Player")){
		target = GameObject.FindWithTag("Player").transform;
		
		if (target) {
			if(target.position.y - transform.position.y > -1)
				height += 0.1;
			else if(transform.position.y - target.position.y > 3)
				height -= 0.1;
				
			var rotation = Quaternion.Euler(transform.eulerAngles.x, yRot, 0);
			var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
			
			position.y = height;
			
			transform.position = position;
			transform.rotation = rotation;
		}
	}
}