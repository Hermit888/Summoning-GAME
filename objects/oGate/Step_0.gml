if (global.gate){
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		door_popup_id.visible = true;
		if (keyboard_check(ord("F"))){
			if (global.circle){
				oMagicalCircle.visible = 0;
			}
			door_popup_id.visible = false;
			room_goto(Hallway);
			global.key1 = false;
			global.key2 = true;
			instance_destroy();
		}
	} else {
		door_popup_id.visible = false;
	}
}