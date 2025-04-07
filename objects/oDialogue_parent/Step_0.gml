/// @description 

if(showing_dialog == false) {
	if(dialog.count() <= 0 and next_room == undefined) {
		instance_destroy();
		return;
	} 
	else if (dialog.count() <= 0 and next_room != undefined) {
		room_goto(next_room);
		instance_destroy();
		return;
	}

	
	current_dialog = dialog.pop();
	showing_dialog = true;
	
	selected_choice = -1;
	choice_hover = -1;
} else {
	if (current_dialog.is_choice){
		mx = device_mouse_x_to_gui(0);
		my = device_mouse_y_to_gui(0);
		
		base = display_get_gui_height() - 200;
		choice_start_y = base + choice_height + choice_padding;
		
		choice_hover = -1;
		
		for (var i = 0; i < array_length(current_dialog.choices); i++){
			y1 = choice_start_y + i*(32 + choice_spacing);
			y2 = y1 + 32;
			
			if (mx > 50 && mx < display_get_gui_width()-50 && my > y1 && my < y2){
				choice_hover = i;
				
				if (mouse_check_button_released(mb_left)){
					selected_choice = i;
					showing_dialog = false;
					alpha = 0;
					
					if (is_function(current_dialog.choices[i].callback)){
						current_dialog.choices[i].callback();
					}
				}
			}
		}
	}
	else if (mouse_check_button_released(mouse_next) || keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}