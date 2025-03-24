deleteCounter++;
if deleteCounter >= 25
{
	instance_destroy(oBossAttack19part2);
}


if deleteCounter < 7
{
	y = mouse_y;
}


if deleteCounter == 7
{
	xspd = -40;
}

x += xspd;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}




