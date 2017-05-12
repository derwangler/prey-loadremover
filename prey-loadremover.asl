state("Prey", "v1.0.0.0")
{
  byte initLoadscreen: "Prey.exe", 0x28D1280;
  byte mainLoadscreen: "Prey.exe", 0x2433B13;
  byte postLoadscreen: "Prey.exe", 0x24C08F6;
  byte scndLoadscreen: "Prey.exe", 0x241C8A8, 0x1E60, 0x258;
}

state("Prey", "v1.0.1.0")
{
  byte initLoadscreen: "Prey.exe", 0x28D1280;
  byte mainLoadscreen: "Prey.exe", 0x2433B13;
  byte postLoadscreen: "Prey.exe", 0x24C0946;
  byte scndLoadscreen: "Prey.exe", 0x241C890, 0x1EA0, 0x258;
}

init
{
	if(modules.First().ModuleMemorySize.ToString() == vars.v1000)
	{
		version = "v1.0.0.0";
		return true;
	}
	else if(modules.First().ModuleMemorySize.ToString() == vars.v1010)
	{
		version = "v1.0.1.0";
		return true;
	}
	return false;
}

startup
{
	vars.v1000 = "171769856";
	vars.v1010 = "174698496";
}


isLoading
{
	return 
	current.initLoadscreen != 0 || 
	current.mainLoadscreen != 0 || 
	current.postLoadscreen == 1 || 
	current.scndLoadscreen == 2;
}
