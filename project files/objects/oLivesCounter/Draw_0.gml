
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_text_color(110, 680, "lives: ", c_black, c_black, c_black, c_black, 1);

draw_text_color(200, 680, string(global.userLives), numCol, numCol, numCol, numCol, 1);

if room == rComplete || room == rGameOver
{
	instance_destroy(oLivesCounter);
}