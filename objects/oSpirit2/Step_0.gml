if (!has_interacted){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		char_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			has_interacted = true;
			global.key6 = true;
			instance_create_layer(x, y, layer, oDialogue8);
			instance_destroy(char_popup_id);
			instance_destroy();
		}
	} else {
		char_popup_id.visible = false;
	}
}