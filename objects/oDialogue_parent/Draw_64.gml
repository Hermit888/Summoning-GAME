// DRAW_GUI
draw_set_font(fnt_txt);

// background
draw_set_color(background);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

if (showing_dialog == true) {
    // init dialogue box
    var base = display_get_gui_height() - 200;
    
    var text_x = 30;
    var text_y = 18;
    var height = 32;
    var border = 5;
    var padding = 16;
    
    height = string_height(current_dialog.message);
    
    if (sprite_exists(current_dialog.sprite) && sprite_get_height(current_dialog.sprite) > height) {
        height = sprite_get_height(current_dialog.sprite);
    }
    
    height += padding * 2;
    text_x = sprite_exists(current_dialog.sprite) ? sprite_get_width(current_dialog.sprite) + (padding * 2) : padding;
    
    draw_set_alpha(alpha);
    
    // plot dialogue box
    draw_set_color(c_black);
    draw_rectangle(0, 0+base, display_get_gui_width(), base+height, false);
    
    draw_set_color(c_white);
    draw_rectangle(border, base+border, display_get_gui_width() - border, base+height - border, false);
    
    draw_set_color(c_black);
    draw_rectangle((border * 2), base+(border * 2), display_get_gui_width() - (border * 2), base+height - (border * 2), false);
    
    if (sprite_exists(current_dialog.sprite)) {
        draw_sprite(current_dialog.sprite, 0, border * 3, base+border * 3);
    }
    
    draw_set_color(c_white);
    draw_text_ext(text_x, base+text_y, current_dialog.message, 16, display_get_gui_width() - 192);
    
    // plot options
    if (current_dialog.is_choice) {
        // init
        var options_width = 200;
        var options_x = display_get_gui_width() - options_width - 20;
        var options_y = base - (array_length(current_dialog.choices) * 40 - 20);
        
        // background
        draw_set_color(c_black);
        draw_rectangle(options_x - 5, options_y - 5, 
                      options_x + options_width + 5, 
                      options_y + array_length(current_dialog.choices) * 40 + 5, false);
        
        draw_set_color(c_white);
        draw_rectangle(options_x, options_y, 
                      options_x + options_width, 
                      options_y + array_length(current_dialog.choices) * 40, false);
        
        // options
        for (var i = 0; i < array_length(current_dialog.choices); i++) {
            var option_y = options_y + i * 40;
            
            // detect hover mouse
            var mx = device_mouse_x_to_gui(0);
            var my = device_mouse_y_to_gui(0);
            
            // highlight the option
            if (mx > options_x && mx < options_x + options_width &&
                my > option_y && my < option_y + 35) {
                choice_hover = i;
                draw_set_color(c_ltgray);
                draw_rectangle(options_x, option_y, options_x + options_width, option_y + 35, false);
                
                // mouse click
                if (mouse_check_button_released(mb_left)) {
                    selected_choice = i;
                    showing_dialog = false;
                    alpha = 0;
                    
					
                    if (is_callable(current_dialog.choices[i].callback)) {
						//show_debug_message("Its test " +current_dialog.choices[i].text);
                        current_dialog.choices[i].callback(dialog);
                    }
                }
            } else {
                draw_set_color(c_white);
            }
            
            // plot text
            draw_set_color(c_black);
            draw_text(options_x + 10, option_y + 10, current_dialog.choices[i].text);
        }
    }
    
    alpha = lerp(alpha, 1, 0.06);
} else {
	alpha = lerp(alpha, 0, 0.1);
}

draw_set_alpha(1);