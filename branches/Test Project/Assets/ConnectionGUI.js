
var remoteIP = "127.0.0.1";
var remotePort = 25000;
var listenPort = 25000;
var useNAT = false;
var yourIP = "";
var yourPort = "";

function OnGUI()
{
	//Checking if the client is connected to the server or not
	if (Network.peerType == NetworkPeerType.Disconnected)
	{
		//If not connected
		
		if (GUI.Button (new Rect(10,10,100,30), "Connect"))
		{
			Network.useNat = useNAT;
			//connecting to the server
			Network.Connect(remoteIP,remotePort);
		}
		
		if (GUI.Button (new Rect(10,50,100,30), "Start Server"))
		{
			Network.useNat = useNAT;
			//Create server
			Network.InitializeServer(32, listenPort);
			
			//Notify our objects that the level and the network is ready
			for (var go: GameObject in FindObjectsOfType(GameObject))
			{
				go.SendMessage("OnNetworkLoadedLevel", SendMessageOptions.DontRequireReceiver);
			}
		}
		
		//Fields to insert IP address and port
		remoteIP = GUI.TextField(new Rect(120,10,100,20), remoteIP);
		remotePort = parseInt(GUI.TextField(new Rect(230,10,50,20),remotePort.ToString()));
	}
	else
	{
		//Getting your IP and port
		ipaddress = Network.player.ipAddress;
		port = Network.player.port.ToString();
		
		GUI.Label(new Rect(140,20,250,40), "IP Address: " + ipaddress + ":" + port);
		if (GUI.Button (new Rect(10,10,100,50), "Disconnect"))
		{
			//Disconnect from the server
			Network.Disconnect(200);
		}
	}

}

function OnConnectedToServer () 
{
	//Notify our objects that the level and the network are ready
	for (var go : GameObject in FindObjectsOfType(GameObject))
	{
		go.SendMessage("OnNetworkLoadedLevel", SendMessageOptions.DontRequireReceiver);
	}
}

function Update () {
}