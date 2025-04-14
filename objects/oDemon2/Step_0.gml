if (!has_interacted){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		char_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			has_interacted = true;
			global.key4 = true;
			instance_create_layer(x, y, layer, oDialogue5);
			instance_destroy(char_popup_id);
			instance_destroy();
		}
	} else {
		char_popup_id.visible = false;
	}
}