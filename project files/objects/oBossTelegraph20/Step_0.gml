deleteCounter++;
if deleteCounter >= 25
{
	instance_destroy(oBossTelegraph20);
}

switch (deleteCounter)
{
	case 0: visible = true; break;
	case 8: visible = false; break;
	case 15: visible = true; break;
	case 22: visible = false; break;
}





