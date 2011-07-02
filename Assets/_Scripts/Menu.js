
function OnGUI()
{
	//GUI.Label(new Rect((Screen.width/2)-71,(Screen.height/2)-130,200,50),"Select Connection Type");
	GUI.Label(new Rect((Screen.width/2)-65,(Screen.height/2)-200,220,30), "Multiplayer Prototype");
	GUI.Label(new Rect((Screen.width/2)-49,(Screen.height/2)-230,220,30), "Skybox Studios");
	
	if(GUI.Button(new Rect((Screen.width/2)-100,(Screen.height/2)-100,200,50),"I dare to enter"))
	{
		Application.LoadLevel("MasterServer");
	}
	/*if(GUI.Button(new Rect((Screen.width/2)-100,(Screen.height/2)-40,200,50),"Direct Connection"))
	{
		Application.LoadLevel("StarTrooper");
	}
	if(GUI.Button(new Rect((Screen.width/2)-100,(Screen.height/2)+20,200,50), "UDP Connection"))
	{
		Application.LoadLevel("UDPServer");
	}*/

}

function Update () {
}