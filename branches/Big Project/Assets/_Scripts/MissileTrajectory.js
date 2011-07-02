var explosion : GameObject;

function FixedUpdate () {
	if(GameObject.FindWithTag("Missile"))
	{
		rigidbody.AddForce (transform.TransformDirection (Vector3.forward + Vector3(0,0.1,0)) * 720.0);
	}
}

function OnCollisionEnter(collision : Collision) {
	if (GameObject.FindWithTag("SpaceCraft"))
	{
		if(((collision.gameObject.tag == "Untagged") || (collision.gameObject.tag == "SpaceCraft")) && (collision.gameObject.tag != "Missile"))
		{
			var contact : ContactPoint = collision.contacts[0];
			Instantiate (explosion, contact.point + (contact.normal * 5.0), Quaternion.identity);
			
			if (collision.gameObject.tag == "SpaceCraft")
			{
				Instantiate (explosion, contact.point + (contact.normal * 5.0) , camera.main.transform.rotation);
				collision.gameObject.transform.position = GameObject.Find("Spawn").transform.position;
				
			}
			
			Destroy(gameObject);
		}
	}
}
