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
private var height : float = 2;
var maxHeight = 2;
var minHeight = 0.5;

function LateUpdate () {
	if(GameObject.FindWithTag("Player")){
		target = GameObject.FindWithTag("Player").transform;
		
		if (target) {
			var diff = (transform.position.y - target.position.y);
			if(diff > maxHeight)
				height -= Mathf.Abs(diff)/30.0;
			else if(diff < minHeight)
				height += Mathf.Abs(diff)/30.0;
					
			var rotation = Quaternion.Euler(transform.eulerAngles.x, yRot, 0);
			var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
			
			position.y = height;
			
			transform.position = position;
			transform.rotation = rotation;
		}
	}
}