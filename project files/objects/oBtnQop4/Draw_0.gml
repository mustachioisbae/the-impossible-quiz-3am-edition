draw_self();
draw_set_font(fntComicSans);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if room != rQ13
{
	draw_text_color(x, y, btnText, textCol, textCol, textCol, textCol, 1);
}
else
{
	draw_text_transformed_color(x, y, btnText, 0.85, 0.85, 0, textCol, textCol, textCol, textCol, 1);
}