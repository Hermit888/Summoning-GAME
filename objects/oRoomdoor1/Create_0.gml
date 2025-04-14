door_popup_id = instance_create_layer(x + 30, y -20, layer, opopup);

door_popup_id.visible = false;

radius = 30;

if (variable_global_exists("key1")){
	global.key1 = false;
}
else{
	global.key1 = true;
}