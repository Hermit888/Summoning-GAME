if (global.is_active) {

    var next_x = x + move_dir * move_speed;
    
    if (place_meeting(next_x, y, oUnderWall) || 
        place_meeting(x, y, oRoomdoor4) || 
        next_x <= 0 || 
        next_x >= room_width - sprite_width) {
        move_dir *= -1;
    }
	
	if (move_dir == -1){
			direction = 1;
			sprite_index = sCerberusg_lt;
		} else {
			direction = 0;
			sprite_index = sCerberusg_rt;
	}
	
    x += move_dir * move_speed;

    

    if (place_meeting(x, y, oPlayer) && !global.invincible) {
        var player = instance_place(x, y, oPlayer);
        

        if (player.y < y - sprite_height+158 && player.vsp > 0) {
			
            boss_hp -= 1;
			if (boss_hp > 0){
				player.vsp = player.jump_force/2;
			}
            
            if (boss_hp <= 5) {
                move_speed = 5; 
            }
            
            if (boss_hp <= 0) {
				instance_create_layer(x, y, layer, oDialogue10);
				instance_create_layer(5088, 640, layer, oGate);
				instance_destroy(oInstru_attack);
                instance_destroy();
            }
        } 
        else {
            player.hp -= damage;
            

            global.invincible = true;
            player.invincible_time = player.invincible_duration; 
            player.damage_flash = true;
            

            var knockback_dir = sign(player.x - x);
            player.hsp = knockback_dir * 10;
            player.vsp = -5;
            
            if (player.hp <= 0) {
				instance_create_layer(x, y, layer, oDialogue11);
				instance_destroy();
            }
        }
    }
}