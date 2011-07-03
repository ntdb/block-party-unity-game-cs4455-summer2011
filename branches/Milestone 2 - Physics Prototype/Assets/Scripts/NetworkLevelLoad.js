
var myGuiSkin : GUISkin;

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
		if (!playing){
			if (GUI.Button(new Rect((Screen.width/2)-50,10,100,30), "Play"))
			{
				playing = true;
				Network.RemoveRPCsInGroup(0);
				Network.RemoveRPCsInGroup(1);
				//Load level with incremented prefix
				//networkView.RPC("LoadLevel", RPCMode.AllBuffered, "StarTrooper", lastLevelPrefix + 1);
			}
		}
		if (playing)
		{
			//GUI.Label(new Rect(10,50,100,30), "Skybox Studios");
			//GUI.Label(new Rect(10,80,100,30), "Adil Delawalla");
		}
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