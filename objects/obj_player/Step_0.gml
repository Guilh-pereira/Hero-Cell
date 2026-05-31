/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//definindo quais teclas aquelas variáveis representam
right = keyboard_check(ord("D")) or keyboard_check(vk_right)
up = keyboard_check(ord("W")) or keyboard_check(vk_up)
left = keyboard_check(ord("A")) or keyboard_check(vk_left)
down = keyboard_check(ord("S")) or keyboard_check(vk_down)

//vamos usar essas variáveis para definir para onde é o movimento
var _xx = right - left
var _yy = down - up

if(_xx != 0 or _yy != 0) {
	sprite_index = spr_player_walking
	dir = point_direction(x, y, x + _xx, y + _yy)
	hspd = lengthdir_x(spd, dir)
	vspd = lengthdir_y(spd, dir)

	x += hspd //aplica a velocidade x no personagem
	y += vspd //aplica a velocidade y no personagem
} else {
	sprite_index = spr_player_idle
}

//código para disparar ataque
spell_1_cd--
if(spell_1_cd <= 0) {
	var _enemy = instance_nearest(x, y, par_enemy)
	var _inst = instance_create_layer(x, y, "Instances", obj_spell_1)
	_inst.speed = 2
	_inst.direction = point_direction(x, y, _enemy.x, _enemy.y)
	spell_1_cd = spell_1_timer
}

