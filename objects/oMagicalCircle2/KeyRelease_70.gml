if (! global.interacted2){
	global.interacted2 = true;
	popup_id.visible = false;
	if (collision_circle(x, y, radius, oPlayer, false, true)){
		instance_create_layer(x, y, layer, oDialoguetest);
	}
	global.interacted2 = true;
	instance_destroy(popup_id);
}

