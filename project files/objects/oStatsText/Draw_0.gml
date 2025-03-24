
draw_set_font(fntComicSansLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_ext_color(640, 100, "Statistics", 40, 1000, col, col, col, col, 1);

draw_set_font(fntComicSans);

draw_text_ext_color(640, 360, statsText + totalPlatyTimeText, 40, 1000, col, col, col, col, 1);