/// @description 
//text
draw_set_font(fnt_txt);

// background
draw_set_color(background);
draw_rectangle(0, 0 , 1366, 798, false);

if(showing_dialog == true) {
	// init to draw the dialogues
	var base = display_get_gui_height()-200;
	
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	// options height
	if (current_dialog.is_choice){
		choice_height = height;
		height += array_length(current_dialog.choices) * (32 + choice_spacing) + choice_padding*2;
	}
	
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0+base, display_get_gui_width(), base+height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, base+border, display_get_gui_width() - border, base+height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), base+(border * 2), display_get_gui_width() - (border * 2), base+height - (border * 2), false);
	
	if(current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, border * 3, base+border * 3);
	}
	
	draw_set_color(c_white);
	draw_text_ext(text_x, base+text_y, current_dialog.message, 16, display_get_gui_width() - 192);
	
	// draw options
	if (current_dialog.is_choice) {
        var choice_start_y = base + choice_height + choice_padding;
        
        for (var i = 0; i < array_length(current_dialog.choices); i++) {
            var choice_y = choice_start_y + i * (32 + choice_spacing);
            
            // 绘制选项背景
            if (choice_hover == i) {
                draw_set_color(c_white);
                draw_rectangle(50, choice_y, display_get_gui_width() - 50, choice_y + 32, false);
                draw_set_color(c_black);
            } else {
                draw_set_color(c_gray);
                draw_rectangle(50, choice_y, display_get_gui_width() - 50, choice_y + 32, false);
                draw_set_color(c_white);
            }
            
            // 绘制选项文本
            draw_text(70, choice_y + 8, current_dialog.choices[i].text);
        }
    }
	
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);