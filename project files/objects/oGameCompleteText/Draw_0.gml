
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_ext_color(xpos, ypos, "You Did It!!!", 40, 1000, col, col, col, col, 1);

draw_text_ext_color(xpos - 70 + offsetX, ypos + 160, "Your Grade: ", 40, 1000, c_black, c_black, c_black, c_black, 1);
draw_text_ext_color(xpos + 130 + offsetX, ypos + 160, rank, 40, 1000, rankCol, rankCol, rankCol, rankCol, 1);

