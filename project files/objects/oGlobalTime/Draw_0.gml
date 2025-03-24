
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_left);
draw_set_valign(fa_center);


draw_text_color(900, 40, "Time: " + minutesText + ":" + secondsText + "." + millisecondsText, c_black, c_black, c_black, c_black, 1);

if room == rTitleScreen
{
	instance_destroy(oGlobalTime);
}