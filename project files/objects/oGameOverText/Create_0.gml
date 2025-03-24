text = "";
xpos = 640;
ypos = 200;

window_set_cursor(cr_default);

col = c_black;

if instance_exists(oQuestionNumber)
{
	instance_destroy(oQuestionNumber);
}
if instance_exists(oLivesCounter)
{
	instance_destroy(oLivesCounter);
}
if instance_exists(oQuestionDisplay)
{
	instance_destroy(oQuestionDisplay);
}

audio_stop_all();
audio_play_sound(sfxGameOver, 0, false, 0.5);

global.Deaths++;

if global.Deaths >= 10
{
	global.achievement10Deaths = true;
}
if global.Deaths >= 100
{
	global.achievement100Deaths = true;
}

saveStats();