if (global.count < 1){
	if (!has_interacted){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		char_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			has_interacted = true;
			instance_create_layer(x, y, layer, oDialogue1_2);
			instance_destroy(char_popup_id);
			global.count ++;
			instance_destroy();
			}
		} else {
			char_popup_id.visible = false;
		}
	}
} else {
	instance_destroy();
}
