DontDestroyOnLoad(this);
var myGuiSkin : GUISkin;

var gameName = "Block Party";
var serverPort = 25000;

private var isServer = false;

var remoteIP = "127.0.0.1";
var remotePort = 25000;

private var timeoutHostList = 0.0;
private var lastHostListRequest = -1000.0;
private var hostListRefreshTimeout = 10.0;

private var natCapable : ConnectionTesterStatus = ConnectionTesterStatus.Undetermined;
private var filterNATHosts = false;
private var probingPublicIP = false;
private var doneTesting = false;
private var timer : float = 0.0;

private var windowRect = Rect(Screen.width-300,0,300,100);
private var hideTest = false;
private var testMessage = "Undetermined NAT capabilities";

//Enable this if not running a client on the server machine
// MasterServer.dedicatedServer = true;

function OnFailedToConnectToMasterServer(info : NetworkConnectionError) {
	Debug.Log(info);
}

function OnFailedToConnect(info : NetworkConnectionError) {
	Debug.Log(info);
}

function OnGUI() {
	GUI.skin = myGuiSkin;
	ShowGUI();
}

function Awake() {
	//start connection test
	natCapable = Network.TestConnection();
	
	//What kind of IP does this machine have? testConnection also indicates this in the results
	if (Network.HavePublicAddress())
		Debug.Log("This machine has a public IP address");
	else
		Debug.Log("This machine has a private IP address");
		
}

function Update () {
	//If test is undetermined, keep running
	if(!doneTesting) {
		TestConnection();
	}
}

function TestConnection() {
	// Start/Poll the connection test, report the results in a label and react to the results accordingly
	natCapable = Network.TestConnection();
	switch (natCapable) 
	{
		case ConnectionTesterStatus.Error:
			testMessage = "Problem determining NAT capabilities";
			doneTesting = true;
			break;
			
		case ConnectionTesterStatus.Undetermined:
			testMessage = "Undetermined NAT capabilities";
			doneTesting = false;
			break;
			
		case ConnectionTesterStatus.PrivateIPNoNATPunchthrough:
			testMessage = "Cannot do NAT punchthrough, filtering NAT enabled hosts for client connections, local LAN games only.";
			filterNATHosts = true;
			Network.useNat = true;
			doneTesting = true;
			break;
			
		case ConnectionTesterStatus.PrivateIPHasNATPunchThrough:
			if(probingPublicIP)
				testMessage = "Non-connectable public IP address (port "+ serverPort +" blocked), NAT punchthrough can circumvent the firewall.";
			else
				testMessage = "NAT punchthrough capable. Enabling NAT punchthrough functionality.";
			Network.useNat = true;
			doneTesting = true;
			break;
		
		case ConnectionTesterStatus.PublicIPIsConnectable:
			testMessage = "Directly connectable public IP address.";
			Network.useNat = false;
			doneTesting = true;
			break;
			
		case ConnectionTesterStatus.PublicIPPortBlocked:
			testMessage = "Non-connectable public IP address (port " + serverPort + " blocked), running a server impossible.";
			Network.useNat = false;
			
			// If no NAT punchthrough test has been performed on this public IP, force a test
			if (!probingPublicIP)
			{
				Debug.Log("Testing if firewall can be circumvented");
				natCapable = Network.TestConnectionNAT();
				probingPublicIP = true;
				timer = Time.time + 10;
		   }
		   // NAT punchthrough test was performed but we still get blocked
		   else if (Time.time > timer)
		   {
				probingPublicIP = false; // reset
				Network.useNat = true;
				doneTesting = true;
		   }
		   break;
		   
		case ConnectionTesterStatus.PublicIPNoServerStarted:
			testMessage = "Public IP address but server not initialized. It must be started to check server accessibility. Restart connection test when ready.";
			break;
			
		default:
			testMessage = "Error in test routine, got " + natCapable;
		   
	}
}

function ShowGUI() {
	/*if (GUI.Button (new Rect(100,10,120,30),"Retest connection"))
	{
		Debug.Log("Redoing connection test");
		probingPublicIP = false;
		doneTesting = false;
		natCapable = Network.TestConnection(true);
	}*/
	
	if (Network.peerType == NetworkPeerType.Disconnected)
	{
		//Show start screen text:
		GUI.Label(new Rect((Screen.width/2)-65,(Screen.height/2)-200,220,100), "Milestone 2: Physics Implementation");
		GUI.Label(new Rect((Screen.width/2)-49,(Screen.height/2)-230,220,100), "Skybox Studios");
		
		//Start a new server
		if (GUI.Button(new Rect(10,200,130,30), "Start Server"))
		{
			var useNat = !Network.HavePublicAddress();
			Network.InitializeServer(32, serverPort, useNat);
			MasterServer.updateRate = 3;
			MasterServer.RegisterHost(gameName, "stuff", "profas chat test");
			isServer = true;
		}
		
		//Refresh hosts
		/*if (GUI.Button(new Rect(10,40,210,30), "Refresh available servers") || Time.realtimeSinceStartup > lastHostListRequest + hostListRefreshTimeout)
		{
			MasterServer.ClearHostList();
			MasterServer.RequestHostList(gameName);
			lastHostListRequest = Time.realtimeSinceStartup;
			Debug.Log("Refresh Click");
		}*/
		
		//Fields to insert IP address and port
		remoteIP = GUI.TextField(new Rect(150,250,100,30), remoteIP);
		remotePort = parseInt(GUI.TextField(new Rect(260,250,70,30),remotePort.ToString()));
		
		if (GUI.Button (new Rect(10,250,130,30), "Connect"))
		{
			//connecting to the server
			Network.Connect(remoteIP,remotePort);
		}
		
		var data : HostData[] = MasterServer.PollHostList();
		
		var _cnt : int = 0;
		
		for(var element in data)
		{
			if( !(filterNATHosts && element.useNat) )
			{
				var name = element.gameName + " " + element.connectedPlayers + " / " + element.playerLimit;
				var hostInfo;
				hostInfo = "[";
				for (var host in element.ip)
				{
					hostInfo = hostInfo + host + ":" + element.port + "";
				}
				hostInfo = hostInfo + "]";
				
				/*if (GUI.Button(new Rect(20,(_cnt*50)+90,400,40), hostInfo.ToString()))
				{
					// Enable NAT functionality based on what the hosts is configured to do
					
					Network.useNat = element.useNat;
					
					if (Network.useNat)
						print("Using NAT punchthrough to connect");
					else
						print("Connecting directly to host");
						
					Network.Connect(element.ip, element.port);
				}*/
			}
		}
	}
	else
	{
		if(GUI.Button (new Rect(10,10,130,30), "Disconnect"))
		{
			Network.Disconnect();
			MasterServer.UnregisterHost();
			isServer = false;
		}
		
		if(isServer)
		{
			GUI.Label(new Rect(Screen.width-250, 10, 250, 30), "Server IP: " + Network.player.ipAddress.ToString() + ":" + Network.player.port.ToString());
		}
		else if (remoteIP != "127.0.0.1")
		{
			GUI.Label(new Rect(Screen.width-250, 10, 250, 30), "Server IP: " + remoteIP.ToString() + ":" + remotePort.ToString());
		}
	}

}







