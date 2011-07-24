var speed = 1;
public var PowerUpName : String;
public var Skates : GameObject;
public var Wings : GameObject;

function Awake(){
	if(PowerUpName == "Skates"){
		var skates = Instantiate(Skates, transform.position, transform.GetChild(0).rotation);
		skates.transform.parent = transform;
	} else if (PowerUpName == "Wings"){
		var wings = Instantiate(Wings, transform.position, transform.GetChild(0).rotation);
		wings.transform.parent = transform;
		wings.GetComponent("WingsController").ActivateWings();
	}
}

function Update () {
	transform.Rotate(-Vector3.up * Time.deltaTime * speed);
}

function OnCollisionEnter(collision : Collision){
	if(collision.collider.gameObject.tag == "Player"){
		switch(PowerUpName){
			case "Wings" : 
							collision.collider.gameObject.GetComponent("characterPowerUpHandler").addGlideAbility(); 
							break;
			case "Skates" :
							collision.collider.gameObject.GetComponent("characterPowerUpHandler").addRocketSkates();
							break;
			default : 
							Debug.Log("Unknown ability '" + PowerUpName + "' - no power up granted"); break;
		}
		Destroy(gameObject);
	}
}