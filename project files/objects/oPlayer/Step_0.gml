x = mouse_x;
y = mouse_y;



if hit = true && invincibilityFrames <= 0
{
	invincibilityFrames = 90;
	global.userLives--;
	checkLives();
}


invincibilityFrames--;
hit = false;

if invincibilityFrames > 0
{
	flicker = true;
}
else
{
	flicker = false;
	visible = true;
}

if flicker
{
	flickerCounter--
	
	if flickerCounter <= 0
	{
		visible = !visible;
		flickerCounter = 10;
	}
}
