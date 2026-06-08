//variavel para inserir o botao de pause
if(scr_pause()){
    exit;
}

if(global.levelup == true) {
	exit //para de executar todo o código abaixo dele
}

if(is_damage == true) { //muda a cor da sprite se estiver tomando dano
	image_blend = c_red
} else {
	image_blend = c_white
}
if (show_hp_timer > 0) { //condição que faz o timer do hp começar
    show_hp_timer--;
}

//sistema de regeneração
if(hp < hpMax)
{
	hp += hp_regen / room_speed

	if(hp > hpMax)
		hp = hpMax
}

//sistema de berserk
// porcentagem de vida atual
var hp_percent = hp / hpMax

// quanto menos vida, maior o bonus
var rage_bonus = (1 - hp_percent)

// calcula dano final do projétil
damage_final = projectile_damage + (rage_bonus * berserk_damage)

// calcula velocidade de disparo final
var spell_timer_final = spell_1_timer - (rage_bonus * berserk_attack_speed)

// evita quebrar o jogo
if(spell_timer_final < 5)
	spell_timer_final = 5

// velocidade progressiva
if(progressive_speed)
{
	spd = base_spd + ((1 - hp_percent) * 0.7)
}
else
{
	spd = base_spd
}

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
// diminui o cooldown do disparo a cada frame
spell_1_cd--

// verifica se já pode atacar novamente
if(spell_1_cd <= 0)
{
	// procura o inimigo mais próximo do player
	var _enemy = instance_nearest(x, y, par_enemy)

	// verifica se realmente existe um inimigo
	// evita erro quando não há inimigos na sala
	if(instance_exists(_enemy))
	{
		// cria o projétil na layer "Instances"
		var _inst = instance_create_layer(x, y, "Instances", obj_spell_1)

		// toca o som do disparo
		audio_play_sound(snd_shoot, 0, false)

		// define a velocidade do projétil
		_inst.speed = 2

		// faz o projétil ir na direção do inimigo mais próximo
		_inst.direction = point_direction(x, y, _enemy.x, _enemy.y)

		// envia o dano calculado para o projétil
		// isso permite upgrades de dano e berserk funcionarem
		_inst.damage = damage_final
	}

	// reinicia o cooldown do disparo
	// usa o cooldown alterado pelo sistema berserk
	spell_1_cd = spell_timer_final
}