public var barSpeed = 4;
public var down : boolean = false;
private var startingPos;
private var timer = 0;

function Awake() {
	startingPos = new Array();
	for(i=0; i<transform.childCount; i++) {
		startingPos.push(transform.GetChild(i).position.y);
	}
}

function Update () {
	if(!down) {
		timer = 0;
	} else {
		timer++;
	}

	for(i=0; i<transform.childCount; i++) {
		var thisChild : Transform = transform.GetChild(i);
	
		if(!down && thisChild.position.y < startingPos[i]) {
			transform.GetChild(i).position.y += barSpeed * Time.deltaTime;
		}
		else if(down && thisChild.position.y - startingPos[i] > -(thisChild.lossyScale.y) * 2 && timer > 30 * (i % 2)) {
			transform.GetChild(i).position.y -= barSpeed * Time.deltaTime;
		}
	}
}