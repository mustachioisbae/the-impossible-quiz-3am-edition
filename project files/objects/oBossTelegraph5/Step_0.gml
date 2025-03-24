deleteCounter++;
if deleteCounter >= 60
{
	instance_destroy(oBossTelegraph5);
}

if deleteCounter < 15
{
	visible = true;
}
else if deleteCounter >= 15 && deleteCounter < 30
{
	visible = false;
}
else if deleteCounter >= 30 && deleteCounter < 45
{
	visible = true;
}
else if deleteCounter >= 45
{
	visible = false;
}


