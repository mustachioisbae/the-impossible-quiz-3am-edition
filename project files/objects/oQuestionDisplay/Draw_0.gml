
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_text_ext_color(xpos, ypos, qText, 40, 1000, c_black, c_black, c_black, c_black, 1);

if (room == rQ18)
{
	draw_text_ext_color(640, 360, answerQ18, 40, 1000, c_black, c_black, c_black, c_black, 1);
}

if (room == rQ23)
{
	draw_text_ext_color(640, 360, answerQ23, 40, 1000, c_black, c_black, c_black, c_black, 1);
}