deleteCounter++;
if deleteCounter >= 30
{
	instance_destroy(oBossTelegraph3);
}

if deleteCounter < 15
{
	y -= 24;
}
else
{
	y += 24;
}


