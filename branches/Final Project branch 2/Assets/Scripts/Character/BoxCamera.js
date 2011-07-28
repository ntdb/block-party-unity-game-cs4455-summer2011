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
private var height : float = 5;
private var maxHeight = 4;
private var minHeight = 3;

function LateUpdate () {
	if(GameObject.FindWithTag("Player")){
		target = GameObject.FindWithTag("Player").transform;
		
		var camRot =  target.GetComponent(BoxMove).camRot;
		
		yRot = yRot < camRot ? yRot + 3 : yRot;
		yRot = yRot > camRot ? yRot - 3 : yRot;
		
		if (target) {
				
			var rotation = Quaternion.Euler(15, yRot, 0);
			var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
			
			var diff = (transform.position.y - target.position.y);
			//Debug.Log(diff);
			if(diff > maxHeight)
				height -= Mathf.Abs(diff)/15.0;
			else if(diff < minHeight)
				height += Mathf.Abs(diff)/15.0;
			
			position.y = height;
			
			transform.position = position;
			transform.rotation = rotation;
		}
	}
}