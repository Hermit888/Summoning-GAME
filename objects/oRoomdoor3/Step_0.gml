if (global.key3 && global.key4){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		door_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			door_popup_id.visible = false;
			instance_destroy();
		}
	} else {
		door_popup_id.visible = false;
	}
}