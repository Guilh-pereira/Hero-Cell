/// @description Inserir descrição aqui
randomize()

global.exp = 0
global.exp_max = 100
global.level = 1
global.levelup = false

// game_get_speed(gamespeed_fps) vai retornar o FPS alvo do seu jogo (geralmente 60)
// 60 * 2 = 120 passos (ou seja, 2 segundos)
spawn_timer = game_get_speed(gamespeed_fps) * .5; //a cada 2 segundos nasce um inimigo
upgrade_num = 3
upgrade_alpha = 1
upgrade_scale = 1

display_set_gui_size(320, 180)

//Sistema de upgrade
function Upgrade(_nome, _desc, _sprite, _funcao) constructor {
	nome = _nome
	desc = _desc
	sprite = _sprite
	on_upgrade = _funcao
}

// Pool com os upgrades
global.upgrade_pool = [
	new Upgrade("Vida Extra", "+5 de Vida Máxima", spr_hp, function() {
		obj_player.hpMax += 5
		obj_player.hp += 5 //cura um pouco ao aumentar o hp
	}),
	new Upgrade("Velocidade", "Aumenta a velocidade", spr_speed, function() {
		obj_player.spd += .5 //aumenta a velocidade base
	}),
	new Upgrade("Ataque Rápido", "Ataca em menos tempo", spr_damage, function() {
		obj_player.spell_1_timer -= 5 //reduz o tempo de cooldown
		// Evita que o timer fique menor que 10 frames para não bugar
		if (obj_player.spell_1_timer < 10) obj_player.spell_1_timer = 10;
	}) 
]

// Array que vai guardar os 3 poderes sorteados na tela atual
options = [];
