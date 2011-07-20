// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var myGuiSkin : GUISkin;

function OnGUI()
{
	GUI.skin = myGuiSkin;
	//GUI.Label(new Rect((Screen.width/2)-71,(Screen.height/2)-130,200,50),"Select Connection Type");
	GUI.Label(new Rect((Screen.width/2)-65,(Screen.height/2)-200,220,100), "Milestone 2: Physics Implementation");
	GUI.Label(new Rect((Screen.width/2)-49,(Screen.height/2)-230,220,100), "Skybox Studios");
	
	

}

function Update () {
}