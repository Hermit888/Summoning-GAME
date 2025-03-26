// get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement
var move = key_right - key_left;
hsp = move*walksp;
vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp, y, oWall)){
	// keep moving if don't hit the wall
	while (!place_meeting(x+sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
// new x coordinate
x = x + hsp;

// vertical collision
if (place_meeting(x, y+vsp, oWall)){
	while (!place_meeting(x, y+sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
// new y coordinate
y = y+vsp;
