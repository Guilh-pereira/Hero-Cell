/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
hp -= other.damage //quando encosta toma dano
is_damage = true
alarm[0] = 2
show_hp_timer = game_get_speed(gamespeed_fps) * 2 //como a contar o timer da vida

if(hp <= 0) { //se o hp acabar volta para o menu
	room_goto(Room0);
}