text = "The IMPOSSIBLE Quiz\n3AM Edition";
xpos = 640;
ypos = 150;

col = c_black;

colFrames = 30;

window_set_cursor(cr_default);

//why not lol

if !audio_is_playing(sndTitleTheme)
{
	audio_stop_all();
	audio_play_sound(sndTitleTheme, 0, true);
}

loadStats();
saveStats();
