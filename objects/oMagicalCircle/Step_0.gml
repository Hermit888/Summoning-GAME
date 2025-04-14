if (!has_been_interacted){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		magical_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			instance_create_layer(x, y, layer, oDialogue2);
			magical_popup_id.visible = false;
			has_been_interacted = true;
		}
	} else {
		magical_popup_id.visible = false;
	}
}