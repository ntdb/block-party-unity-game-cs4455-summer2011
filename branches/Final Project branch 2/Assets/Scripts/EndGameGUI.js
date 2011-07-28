

var myGuiSkin : GUISkin;

function OnGUI(){
	GUI.skin = myGuiSkin;
	GUI.Label(new Rect((Screen.width/2) - 140, 100, 400,100), "Congratulations, you're in space.");

}