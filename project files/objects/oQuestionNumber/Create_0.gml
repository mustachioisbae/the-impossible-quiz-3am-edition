qNum = "0";
col = c_red;
hovering = false;
pressStartedOnButton = false;

frameCounter = 0;

audio_play_sound(sndMainTheme, 0, true, 1, 90);

if !instance_exists(oGlobalTime)
{
	instance_create_depth(0, 0, -100, oGlobalTime);
}
else
{
	oGlobalTime.currentMinutes = 0;
	oGlobalTime.currentSeconds = 0;
	oGlobalTime.currentFrames = 0;
}

currentQuestion = 1;
if currentQuestion > global.FurthestQuestion
{
	global.FurthestQuestion = currentQuestion;
	saveStats();
}