if position_meeting(mouse_x, mouse_y, oMaze)
{
	instance_destroy(oMaze);
	instance_destroy(oMazeExit);
	global.userLives--;
	checkLives();
}