deleteCounter++;
if deleteCounter >= 30
{
	instance_destroy(oBossTelegraph14);
}

if deleteCounter == 0
{
	visible = true;
}
if deleteCounter == 8 
{
	visible = false;
}
if deleteCounter == 15 
{
	visible = true;
}
if deleteCounter == 22
{
	visible = false;
}



