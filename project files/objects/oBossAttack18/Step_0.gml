deleteCounter++;
if deleteCounter >= 25
{
	instance_destroy(oBossAttack18);
}

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}





