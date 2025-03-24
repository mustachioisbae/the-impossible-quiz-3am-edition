deleteCounter++;
if deleteCounter >= 170
{
	instance_destroy(oBossAttack20part2);
}

if deleteCounter <= 50
{
	x += 25.6
}

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}



