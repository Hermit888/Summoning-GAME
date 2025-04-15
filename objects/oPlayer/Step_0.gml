if (global.count == 1 && global.replay){
	show_debug_message("bug");
	global.replay = false;
	instance_destroy();
	instance_create_layer(512, 224, layer, oPlayer);
} else if (global.count == 2 && global.replay) {
	global.replay = false;
	instance_destroy();
	instance_destroy(oDemon1);
	instance_destroy(oDemon2);
	instance_destroy(oRoomdoor3);
	instance_create_layer(1952, 672, layer, oPlayer);
}  else if (global.count == 3 && global.replay) {
	global.replay = false;
	instance_destroy();
	instance_destroy(oDemon1);
	instance_destroy(oDemon2);
	instance_destroy(oOfficer);
	instance_destroy(oSpirit1);
	instance_destroy(oSpirit2);
	instance_destroy(oRoomdoor3);
	instance_destroy(oRoomdoor4);
	instance_create_layer(3904, 672, layer, oPlayer);
}


// get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement
var move = key_right - key_left;
hsp = move*walksp;
vsp +=  grv;

// jumping
if (key_jump && jump_curr > 0 && global.move = true){
	vsp = -6;
	jump_curr --;
	
}

// Horizontal collision
// hallway
if (place_meeting(x+hsp, y, oWall)){
	// keep moving if don't hit the wall
	while (!place_meeting(x+sign(hsp), y, oWall)){
		x += sign(hsp);
	}
	
	hsp = 0;
}


// underworld block
if (place_meeting(x+hsp, y, oUnderWall)){
	// keep moving if don't hit the wall
	while (!place_meeting(x+sign(hsp), y, oUnderWall)){
		x += sign(hsp);
	}
	
	hsp = 0;
}

// underworld platform
if (place_meeting(x+hsp, y, oPlatform)){
	// keep moving if don't hit the wall
	while (!place_meeting(x+sign(hsp), y, oPlatform)){
		x += sign(hsp);
	}
	
	hsp = 0;
}


//room door
if (place_meeting(x+hsp, y, oRoomdoor)){
	// keep moving if don't hit the door
	while (!place_meeting(x+sign(hsp), y, oRoomdoor)){
		x += sign(hsp);
	}
	
	hsp = 0;
}

// new x coordinate
x += hsp;


// vertical collision
// hallway block
if (place_meeting(x, y+vsp, oWall)){
	while (!place_meeting(x, y+sign(vsp), oWall)){
		y +=  sign(vsp);
	}
	
	if (vsp > 0){
		jump_curr = jump_num;
	}
	vsp = 0;
}

// underworld block
if (place_meeting(x, y+vsp, oUnderWall)){
	while (!place_meeting(x, y+sign(vsp), oUnderWall)){
		y +=  sign(vsp);
	}
	
	if (vsp > 0){
		jump_curr = jump_num;
	}
	vsp = 0;
}


// underworld platform
if (place_meeting(x, y+vsp, oPlatform)){
	while (!place_meeting(x, y+sign(vsp),  oPlatform)){
		y +=  sign(vsp);
	}
	
	if (vsp > 0){
		jump_curr = jump_num;
	}
	vsp = 0;
}
// new y coordinate
y += vsp;

// fall down into a hole
if (place_meeting(x, y+vsp, oHole)){
	room_goto(End1);
}

// touch the police station
if (place_meeting(x, y+vsp, oPoliceStation)){
	room_goto(End2);
}


if (global.invincible) {
    invincible_time--;
    

    if (invincible_time <= 0) {
        global.invincible = false;
        image_alpha = 1; 
        damage_flash = false;
    } 

    else {
        if (invincible_time mod blink_speed == 0) {
            image_alpha = (image_alpha == 0.5) ? 1 : 0.5;
        }
        

        if (damage_flash && invincible_time > invincible_duration - 10) {
            image_blend = c_red;
        } else {
            image_blend = c_white;
            damage_flash = false;
        }
    }
}