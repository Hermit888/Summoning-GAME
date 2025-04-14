draw_self();
draw_set_color(c_white);
// set font
draw_set_font(fnt_menu);

// set text alignment to middle
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// text
draw_text(x, y, btn_txt);

// reset alignment to default value
draw_set_halign(fa_left);
draw_set_valign(fa_top);