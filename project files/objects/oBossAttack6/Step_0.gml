deleteCounter++;
if deleteCounter >= 500
{
	instance_destroy(oBossAttack6);
}

if place_meeting(x, y, oPlayer) && canCollide
{
	oPlayer.hit = true;
}

waitFrames++;

if waitFrames == 55
{
	xspd = 5;
}
if waitFrames == 115
{
	sprite_index = sBossAttack6part1
	object_set_mask(oBossAttack1, sBossAttack6part1);
	canCollide = true;
}
if waitFrames == 170
{
	sprite_index = noone;
	canCollide = false;
}
if waitFrames == 210
{
	sprite_index = sBossAttack6part2
	object_set_mask(oBossAttack1, sBossAttack6part2);
	canCollide = true;
}
if waitFrames == 275
{
	sprite_index = noone;
	canCollide = false;
}
if waitFrames == 335
{
	sprite_index = sBossAttack6part3
	object_set_mask(oBossAttack1, sBossAttack6part3);
	canCollide = true;
}
if waitFrames == 390
{
	sprite_index = noone;
	canCollide = false;
}
if waitFrames == 440
{
	sprite_index = sBossAttack6part4
	object_set_mask(oBossAttack1, sBossAttack6part4);
	canCollide = true;
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


