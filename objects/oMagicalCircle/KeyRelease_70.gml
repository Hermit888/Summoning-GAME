if (! global.interacted1){
	global.interacted1 = true;
	popup_id.visible = false;
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		
		room_goto(Underworld);
	} 
	global.interacted1 = true;
	instance_destroy(popup_id);
}

