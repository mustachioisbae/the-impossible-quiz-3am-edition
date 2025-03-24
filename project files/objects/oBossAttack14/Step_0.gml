deleteCounter++;
if deleteCounter >= 195
{
	instance_destroy(oBossAttack14);
}

switch (deleteCounter)
{
	case 30: xspd = 50; break;
	case 50: xspd = 0; break;
	case 55: yspd = 20; break
	case 75: yspd = 0; break;
	case 80: xspd = -50; break;
	case 100: xspd = 0; break;
	case 110: yspd = -20; break;
	case 135: yspd = 0; break;
	case 140: yspd = 20; break;
	case 165: yspd = 0; break;
	case 170: xspd = 50; break;
}


x += xspd;
y += yspd;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}



