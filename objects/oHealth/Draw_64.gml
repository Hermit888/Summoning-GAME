var bar_width = 200;
var bar_height = 20;
var bar_x = room_width/2 - bar_width/2;
var bar_y = 20;


draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

var fill_width = (boss_hp / boss_hp_max) * bar_width;
draw_rectangle_color(bar_x, bar_y, bar_x + fill_width, bar_y + bar_height, c_red, c_red, c_red, c_red, false);

draw_set_halign(fa_center);
draw_text(room_width/2, bar_y + bar_height/2, "BOSS HP: " + string(boss_hp) + "/" + string(boss_hp_max));
draw_set_halign(fa_left);


for (var i = 0; i < obj_player.hp; i++) {
    draw_sprite(sHeart, 0, 20 + i * 30, 20);
}