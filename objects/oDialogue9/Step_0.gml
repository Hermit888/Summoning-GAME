if (showing_dialog == false) {
    if (dialog.count() <= 0) {
        if (next_room != undefined) {
            room_goto(next_room);
            instance_destroy();
            return;
        } else if (global.nextRoom != undefined){
			room_goto(global.nextRoom);
			global.nextRoom = undefined;
            instance_destroy();
            return;
		} 
		else {
			global.is_active = true;
			global.health_visiable = true;
			instance_create_layer(x, y, layer, oHealth);
            instance_destroy();
            return;
        }
    }
    
    current_dialog = dialog.pop();
    showing_dialog = true;
    selected_choice = -1;
    choice_hover = -1;
} else {
    if (!current_dialog.is_choice && (mouse_check_button_released(mouse_next))) {
        showing_dialog = false;
    }
}