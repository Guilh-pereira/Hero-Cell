/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(scr_pause()){
    exit;
}

hp -= other.damage //quando encosta toma dano
is_damage = true
alarm[0] = 2
show_hp_timer = game_get_speed(gamespeed_fps) * 2 //como a contar o timer da vida

if(hp <= 0) { //se o hp acabar vai para a tela de game over
	room_goto(Room5);
}