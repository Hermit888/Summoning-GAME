if (! global.interacted1){
	global.interacted1 = true;
	popup_id.visible = false;
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		instance_create_layer(x, y, layer, oDialogue2);
	}
	global.interacted1 = true;
	instance_destroy(popup_id);
	

}

