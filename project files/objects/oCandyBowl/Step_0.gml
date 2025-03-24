//hovering
if position_meeting(mouse_x, mouse_y, oCandyBowl)
{
	
}

//begins pressing on button
if mouse_check_button_pressed(mb_left)
{
	if position_meeting(mouse_x, mouse_y, oCandyBowl)
	{
		pressStartedOnButton = true;
	}
	else
	{
		pressStartedOnButton = false;
	}
}
else if mouse_check_button_released(mb_left) && pressStartedOnButton
{
	//need to ckeck if mouse still on button after releasing
	if position_meeting(mouse_x, mouse_y, oCandyBowl)
	{
		clickCounter++
		
		if image_index > 0
		{
			image_index--;
		}
	}
}