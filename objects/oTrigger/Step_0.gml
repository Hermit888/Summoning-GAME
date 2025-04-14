if (place_meeting(x,y,oPlayer)){
	instance_create_layer(4576, 448, layer, oInstru_attack);
	instance_create_layer(x, y, layer, oDialogue9);
	global.key5 = false;
	global.key6 = false;
	instance_create_layer(4032, 640, layer, oRoomdoor4);
	instance_destroy();
}