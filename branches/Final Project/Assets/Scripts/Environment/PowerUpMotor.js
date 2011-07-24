var speed = 1;
public var PowerUpName : String;
public var Skates : GameObject;
public var Wings : GameObject;
private var spawnAnother = false;
private var timePassed : float = 0.0;

function OnNetworkLoadedLevel(){
	if(Network.isServer){
		networkView.RPC("InstantiateVisualCue", RPCMode.AllBuffered, PowerUpName);
	}
}

@RPC
function InstantiateVisualCue(name : String){
	Debug.Log(name);
	if(name == "Skates"){
		var skates = Instantiate(Skates, transform.position + Vector3(-2.649412e-05, -0.4298017, 0.1977248), transform.GetChild(0).rotation);
		skates.transform.parent = transform.GetChild(0);
	} else if (name == "Wings"){
		var wings = Instantiate(Wings, transform.position, transform.GetChild(0).rotation);
		wings.transform.localScale = Vector3(1.0,1.0,1.0);
		wings.transform.parent = transform.GetChild(0);
		wings.GetComponent("WingsController").ActivateWings();
	}
}

function Update () {
	transform.Rotate(-Vector3.up * Time.deltaTime * speed);
}

function OnCollisionEnter(collision : Collision){
	if(collision.collider.gameObject.tag == "Player"){
		var shouldGetPowerUp = false;
		switch(PowerUpName){
			case "Wings" : 
							if(!collision.collider.gameObject.GetComponent("BoxMove").HasGlidePowerUp) shouldGetPowerUp = true; break;
			case "Skates" :
							if(!collision.collider.gameObject.GetComponent("BoxMove").HasRocketSkates) shouldGetPowerUp = true; break;
		}
		
		if(shouldGetPowerUp){
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
			if(Network.isServer){
				networkView.RPC("moveToHoldingArea", RPCMode.AllBuffered);
			}
		}
	}
}

@RPC
function moveToHoldingArea(){
	transform.position.x = 11000;
}