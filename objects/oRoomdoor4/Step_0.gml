if (global.key5 && global.key6){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		door_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			door_popup_id.visible = false;
			global.count ++;
			instance_destroy();
		}
	} else {
		door_popup_id.visible = false;
	}
}