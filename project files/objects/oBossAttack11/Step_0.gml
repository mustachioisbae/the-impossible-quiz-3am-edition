deleteCounter++;
if deleteCounter >= 30
{
	instance_destroy(oBossAttack11);
}

y += 30

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}



