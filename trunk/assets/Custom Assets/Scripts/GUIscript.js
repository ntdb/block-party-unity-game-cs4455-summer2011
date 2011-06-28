var myGuiSkin : GUISkin;

function OnGUI () {
	GUI.skin = myGuiSkin;
	GUI.Label(Rect(10,0,200,35), "Steven Bass");
	GUI.Label(Rect(10,35,200,35), "SkyBox Studios");
}