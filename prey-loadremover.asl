state("Prey")
{
  byte initLoadscreen: "Prey.exe", 0x28D1280;
  byte mainLoadscreen: "Prey.exe", 0x2433B13;
  byte postLoadscreen: "Prey.exe", 0x24C08F6;
  byte secondLoadscreen: "Prey.exe", 0x241C8A8, 0x1E60, 0x258;
}


isLoading
{
	return current.initLoadscreen != 0 || current.mainLoadscreen != 0 || current.postLoadscreen == 1 || current.secondLoadscreen == 2;
}