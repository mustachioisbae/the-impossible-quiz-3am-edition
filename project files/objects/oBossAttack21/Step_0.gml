deleteCounter++;
if deleteCounter >= 100
{
	instance_destroy(oBossAttack21);
}

switch deleteCounter
{
	case 25:
	sprite_index = sBossAttack21part1;
	object_set_mask(oBossAttack21, sBossAttack21part1);
	canCollide = true;
	break;
	
	case 50:
	sprite_index = sBossTelegraph21part2;
	canCollide = false;
	break;
	
	case 75:
	sprite_index = sBossAttack21part2;
	object_set_mask(oBossAttack21, sBossAttack21part2);
	canCollide = true;
	break;
}

if place_meeting(x, y, oPlayer) && canCollide
{
	oPlayer.hit = true;
}



