deleteCounter++;
if deleteCounter >= 60
{
	instance_destroy(oBossAttack1);
}

x += 22;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}