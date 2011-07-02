using UnityEngine;
using System.Collections;

public class NetworkRigidBody : MonoBehaviour {
	
	public double m_InterpolationBackTime = 0.1;
	public double m_ExtrapolationLimit = 0.5;
	
	internal struct State
	{
		internal double timestamp;
		internal Vector3 pos;
		internal Vector3 velocity;
		internal Quaternion rot;
		internal Vector3 angularVelocity;
		
	}
	
	//Store twenty states with playback information
	State[] m_BufferedState = new State[20];
	//keep track of what slots are used
	int m_TimestampCount;
	
	void OnSerializeNetworkView(BitStream stream, NetworkMessageInfo info) {
		//Send data to server
		if(stream.isWriting)
		{
			Vector3 pos = rigidbody.position;
			Quaternion rot = rigidbody.rotation;
			Vector3 velocity = rigidbody.velocity;
			Vector3 angularVelocity = rigidbody.angularVelocity;
			
			stream.Serialize(ref pos);
			stream.Serialize(ref velocity);
			stream.Serialize(ref rot);
			stream.Serialize(ref angularVelocity);
		}
		//read data from remote client
		else
		{
			Vector3 pos = Vector3.zero;
			Vector3 velocity = Vector3.zero;
			Quaternion rot = Quaternion.identity;
			Vector3 angularVelocity = Vector3.zero;
			
			stream.Serialize(ref pos);
			stream.Serialize(ref velocity);
			stream.Serialize(ref rot);
			stream.Serialize(ref angularVelocity);
			
			//shift the buffer, deleting state 20
			for (int i = m_BufferedState.Length-1; i>= 1; i--)
			{
				m_BufferedState[i] = m_BufferedState[i-1];
			}
			
			//record current state in slot 0
			State state;
			state.timestamp = info.timestamp;
			state.pos = pos;
			state.velocity = velocity;
			state.rot = rot;
			state.angularVelocity = angularVelocity;
			m_BufferedState[0] = state;
			
			// Update used slot count, however never exceed the buffer size
			// Slots aren't actually freed so this just makes sure the buffer is
			// filled up and that uninitalized slots aren't used.
			m_TimestampCount = Mathf.Min(m_TimestampCount + 1, m_BufferedState.Length);
			
			//Check if states are in order, if it is inconsistent you can reshuffle. Nothing is done here
			for (int i = 0; i < m_TimestampCount-1; i++)
			{
				if (m_BufferedState[i].timestamp < m_BufferedState[i+1].timestamp)
					Debug.Log("State inconsistent");
			}
		}
	}
	
	// We have a window of interpolationBackTime where we basically play 
	// By having interpolationBackTime the average ping, you will usually use interpolation.
	// And only if no more data arrives we will use extra polation
	void Update() {
		//Target playback time of the rigid body
		double interpolationTime = Network.time - m_InterpolationBackTime;
		
		//Use interpolation if the target playback time is present in the buffer
		if(m_BufferedState[0].timestamp > interpolationTime)
		{
			//Go through buffer and find correct state to play back
			for (int i = 0; i < m_TimestampCount; i++)
			{
				if (m_BufferedState[i].timestamp <= interpolationTime || i == m_TimestampCount - 1)
				{
					State rhs = m_BufferedState[Mathf.Max(i-1,0)];
					
					State lhs = m_BufferedState[i];
					
					//use the time between the two slots to determine if interpolation is necessary
					double length = rhs.timestamp - lhs.timestamp;
					float t = 0.0F;
					
					// As the time difference gets closer to 100 ms t gets closer to 1 in 
					// which case rhs is only used
					
					if (length > .0001)
						t = (float)((interpolationTime - lhs.timestamp) / length);
					
					transform.localPosition = Vector3.Lerp(lhs.pos, rhs.pos, t);
					transform.localRotation = Quaternion.Slerp(lhs.rot, rhs.rot, t);
					return;
				}
			}
		}
		//Use extrapolation
		else
		{
			State latest = m_BufferedState[0];
			
			float extrapolationLength = (float)(interpolationTime - latest.timestamp);
			//Don't extrapolate for more than 500 ms
			if (extrapolationLength < m_ExtrapolationLimit)
			{
				float axisLength = extrapolationLength * latest.angularVelocity.magnitude * Mathf.Rad2Deg;
				Quaternion angularRotation = Quaternion.AngleAxis(axisLength, latest.angularVelocity);
				
				rigidbody.position = latest.pos + latest.velocity * extrapolationLength;
				rigidbody.rotation = angularRotation * latest.rot;
				rigidbody.velocity = latest.velocity;
				rigidbody.angularVelocity = latest.angularVelocity;
			}
		}
	}
}