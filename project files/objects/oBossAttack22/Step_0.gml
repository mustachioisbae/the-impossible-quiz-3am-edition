deleteCounter++;
if deleteCounter >= 75
{
	instance_destroy(oBossAttack22);
}

switch deleteCounter
{
	case 25: xspd = 5; break;
	case 40: xspd = 0; break;
	case 50: xspd = -5; break;
}

x += xspd;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}





