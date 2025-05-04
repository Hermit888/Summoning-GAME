draw_self();

// set font
draw_sprite_stretched(background, 0, 0, 0, display_get_gui_width(), display_get_gui_height());
draw_set_font(fnt_title);


// set text alignment to middle
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour(c_white);
// text
draw_text(display_get_gui_width()/2, display_get_gui_height()/2-200, title_txt);
