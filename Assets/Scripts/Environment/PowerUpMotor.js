var speed = 1;
public var PowerUpName : String;
private var spawnAnother = false;
private var timePassed : float = 0.0;

function OnNetworkLoadedLevel(){
	if(Network.isServer){
		networkView.RPC("InstantiateVisualCue", RPCMode.AllBuffered, PowerUpName);
	}
}

@RPC
function InstantiateVisualCue(name : String){
	if(name == "Skates"){
		transform.GetChild(0).GetComponent("JetSkates").TurnOnJets();
	} else if (name == "Wings"){
		transform.GetChild(0).GetComponent("WingsController").ActivateWings();
	} else if (name == "Heavy"){
		transform.GetChild(0).renderer.material.color = Color.gray;
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
			case "Heavy" :
							if(!collision.collider.gameObject.GetComponent("BoxMove").HasHeavyPowerUp) shouldGetPowerUp = true; break;
		}
		
		if(shouldGetPowerUp){
			switch(PowerUpName){
				case "Wings" : 
								collision.collider.gameObject.GetComponent("characterPowerUpHandler").addGlideAbility(); 
								break;
				case "Skates" :
								collision.collider.gameObject.GetComponent("characterPowerUpHandler").addRocketSkates();
								break;
				case "Heavy" :
								collision.collider.gameObject.GetComponent("characterPowerUpHandler").addHeavyPowerUp();
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