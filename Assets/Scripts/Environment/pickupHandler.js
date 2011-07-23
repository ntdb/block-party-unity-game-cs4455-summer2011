public var abilityName : String;

function OnTriggerEnter(other : Collider){
	if(other.gameObject.tag == "Player"){
		switch(abilityName){
			case "glide" : 
							other.gameObject.GetComponent("characterPowerUpHandler").addGlideAbility(); 
							break;
			case "rocketSkates" :
							other.gameObject.GetComponent("characterPowerUpHandler").addRocketSkates();
							break;
			default : 
							Debug.Log("Unknown ability '" + abilityName + "' - no power up granted"); break;
		}
		Destroy(gameObject);
	}
}