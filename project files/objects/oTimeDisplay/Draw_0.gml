
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_text_color(1100, 680, "Time left: ", c_black, c_black, c_black, c_black, 1);

draw_text_color(1240, 680, string(secondsLeft-1), col, col, col, col, 1);

if room == rComplete || room == rGameOver
{
	instance_destroy(oTimeDisplay);
}