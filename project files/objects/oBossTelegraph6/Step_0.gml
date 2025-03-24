deleteCounter++;
if deleteCounter >= 500
{
	instance_destroy(oBossTelegraph6);
}

waitFrames++;

if waitFrames == 55
{
	xspd = 5;
	sprite_index = sBossTelegraph6part1
}
if waitFrames == 115
{
	sprite_index = noone;
}
if waitFrames == 170
{
	sprite_index = sBossTelegraph6part2
}
if waitFrames == 210
{
	sprite_index = noone;
}
if waitFrames == 275
{
	sprite_index = sBossTelegraph6part3
}
if waitFrames == 335
{
	sprite_index = noone;
}
if waitFrames == 390
{
	sprite_index = sBossTelegraph6part4
}
if waitFrames == 440
{
	sprite_index = noone;
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


