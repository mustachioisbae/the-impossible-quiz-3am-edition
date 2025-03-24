textCol = c_black;

//hovering
if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
{
	textCol = c_red;
}

//begins pressing on button
if mouse_check_button_pressed(mb_left)
{
	if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
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
	if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
	{
		instance_create_depth(mazeX, mazeY, -100, mazeObj);
		instance_destroy(oBtnMazeStart);
	}
}

