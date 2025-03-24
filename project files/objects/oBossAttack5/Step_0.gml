deleteCounter++;
if deleteCounter >= 500
{
	instance_destroy(oBossAttack5);
}

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}

waitFrames++;

if waitFrames == 55
{
	xspd = 5;
}
if waitFrames >= 55
{
	image_angle++;
	if x > 850
	{
		xspd -= 0.5;
	}
	if xspd < -5
	{
		xspd = -5
	}
	
	if x < 300
	{
		xspd += 0.5;
	}
	if xspd > 5
	{
		xspd = 5
	}
}

x += xspd;


