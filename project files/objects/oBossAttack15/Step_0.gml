deleteCounter++;
if deleteCounter >= 15
{
	instance_destroy(oBossAttack15);
}

x += 40;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}