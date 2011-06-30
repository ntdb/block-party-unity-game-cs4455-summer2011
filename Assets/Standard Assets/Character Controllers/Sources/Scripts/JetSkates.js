function TurnOnJets(){
	var particles : Component[] = GetComponentsInChildren(ParticleEmitter);
	var lights : Component[] = GetComponentsInChildren(Light);
	
	for (var p : ParticleEmitter in particles)
	{
		p.emit = true;
	}
	for (var l : Light in lights)
	{
		l.enabled = true;
	}
}

function TurnOffJets(){
	var particles : Component[] = GetComponentsInChildren(ParticleEmitter);
	var lights : Component[] = GetComponentsInChildren(Light);
	
	for (var p : ParticleEmitter in particles)
	{
		p.emit = false;
	}
	for (var l : Light in lights)
	{
		l.enabled = false;
	}
}