deleteCounter++;
if deleteCounter >= 30
{
	instance_destroy(oBossTelegraph4);
}

if deleteCounter < 15
{
	y += 24;
}
else
{
	y -= 24;
}


