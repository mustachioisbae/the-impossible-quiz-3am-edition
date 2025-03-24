deleteCounter++;
if deleteCounter >= 50
{
	instance_destroy(oBossTelegraph17);
}

switch deleteCounter
{
	case 12: visible = false; break;
	case 24: visible = true; break;
	case 36: visible = false; break;
}





