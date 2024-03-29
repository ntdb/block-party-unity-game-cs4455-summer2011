// Team: SkyBox Studios

// Team Members:
// Nathan Bailey
// Steven Bass
// Tyler Cochran
// Adil Delawalla
// Tyler Meehan

var myGuiSkin : GUISkin;
var levelName : String;

//Keep track of the last level prefix (increment each time a new level loads)
private var lastLevelPrefix = 0;

private var playing = false;

function Awake(){
	//Network level loading is done in a separate channel
	DontDestroyOnLoad(this);
	networkView.group = 1;
	Application.LoadLevel("EmptyScene");
}

function OnGUI() {
	GUI.skin = myGuiSkin;
	//When network is running (server or client) then display the level
	if (Network.peerType != NetworkPeerType.Disconnected)
	{
		if (!playing && Network.isServer){
			
			if (GUI.Button(new Rect((Screen.width/2)-50,10,100,30), "Play"))
			{
			playing = true;
			Network.RemoveRPCsInGroup(0);
			Network.RemoveRPCsInGroup(1);
			//Load level with incremented prefix
			networkView.RPC("LoadLevel", RPCMode.AllBuffered, levelName, lastLevelPrefix + 1);
			}
		}
		else if (playing)
		{
			GUI.Label(new Rect(10,50,200,50), "Skybox Studios");
			//GUI.Label(new Rect(10,80,100,30), "Adil Delawalla");
		}
		GUI.Label(new Rect(Screen.width-115,50, 115, 50), "Players: " + (Network.connections.Length+1));
	}
}

@RPC
function LoadLevel(level : String, levelPrefix : int) {
	Debug.Log("Loading level " + level + " with prefix " + levelPrefix);
	lastLevelPrefix = levelPrefix;
	
	Network.SetSendingEnabled(0, false);
	Network.isMessageQueueRunning = false;
	
	Network.SetLevelPrefix(levelPrefix);
	Application.LoadLevel(level);
	yield;
	yield;
	
	//Allow receiving data again
	Network.isMessageQueueRunning = true;
	//Now the level has been loaded and we can start sending data
	Network.SetSendingEnabled(0,true);
	
	//Notify objects that the level & network are ready
	var go : Transform[] = FindObjectsOfType(Transform);
	var go_len = go.length;
	
	for (var i = 0; i < go_len; i++)
	{
		go[i].SendMessage("OnNetworkLoadedLevel",SendMessageOptions.DontRequireReceiver);
	}
}

function OnDisconnectedFromServer() {
	playing = false;
	Application.LoadLevel("EmptyScene");
}

@script RequireComponent(NetworkView)