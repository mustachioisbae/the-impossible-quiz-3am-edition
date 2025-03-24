deleteCounter++;
if deleteCounter >= 30
{
	instance_destroy(oBossAttack3);
}

if deleteCounter < 15
{
	y -= 24;
}
else
{
	y += 24;
}

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}

