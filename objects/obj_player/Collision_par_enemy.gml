/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verifica se o pause esta ativado ou não
if(global.levelup == true){
	exit;
}

<<<<<<< HEAD
hp -= other.damage //quando encosta toma dano
is_damage = true
alarm[0] = 2
show_hp_timer = game_get_speed(gamespeed_fps) * 2 //como a contar o timer da vida

if(hp <= 0) { //se o hp acabar vai para a tela de game over
	room_goto(Room5);
=======
// impede tomar dano várias vezes seguidas
if(is_damage == false)
{
	
	// sistema de escudo
	// verifica se possui escudo
	if(shield > 0)
	{
		// bloqueia o hit e remove 1 carga do escudo
		shield -= 1

		// ativa pequena invencibilidade
		is_damage = true
		alarm[0] = 30
	}
	else
	{
		// sistema de esquiva
		// verifica chance de esquivar
		if(irandom(99) >= dodge_chance)
		{
			// sistema de armadura
			// reduz dano recebido considerando armadura
			// sempre recebe pelo menos 1 de dano
			hp -= max(other.damage - armor, 1)

			// muda a sprite para indicar dano
			is_damage = true

			// timer da animação de dano
			alarm[0] = 10

			// mostra hp por alguns segundos
			show_hp_timer = game_get_speed(gamespeed_fps) * 2
		}
	}
}

// verifica se morreu
if(hp <= 0) {
	room_goto(Room5); //vai para tela de game over
>>>>>>> feature/upgrades
}