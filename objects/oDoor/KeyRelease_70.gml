if (! global.interacted0){
	global.interacted0 = true;
	popup_id.visible = false;
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		
		room_goto(Dialogue1);
	} 
	global.interacted0 = true;
	instance_destroy(popup_id);
}

