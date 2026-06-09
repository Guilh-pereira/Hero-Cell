/// @description Inserir descrição aqui
audio_stop_all();
global.bgm = audio_play_sound(snd_jogo, 0, true);

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

    // VIDA
    new Upgrade("Vida Extra", "+5 de Vida Máxima", spr_hp, function() {
        obj_player.hpMax += 5
        obj_player.hp += 5
    }),

    // VELOCIDADE
    new Upgrade("Velocidade", "Aumenta a velocidade", spr_speed, function() {
        obj_player.spd += .5
        obj_player.base_spd = obj_player.spd
    }),

    // FIRE RATE
    new Upgrade("Ataque Rápido", "Ataca em menos tempo", spr_dmgspeed, function() {
        obj_player.spell_1_timer -= 5

        if (obj_player.spell_1_timer < 10)
            obj_player.spell_1_timer = 10;
    }),

    // DANO DO PROJÉTIL
    new Upgrade("Projétil Forte", "+1 dano do disparo", spr_dmgup, function() {
        obj_player.projectile_damage += 1
    }),

	// REGENERAÇÃO
    new Upgrade("Regeneração", "+0.5 HP por segundo", spr_hpregen, function() {
        obj_player.hp_regen += 0.5
    }),
    
    // MAGNETISMO XP
    new Upgrade("Magnetismo", "Aumenta alcance do XP", spr_magne, function() {
        obj_player.xp_magnet += 10
    }),

	// ARMADURA
    new Upgrade("Proteção", "-1 dano recebido", spr_armad, function() {
        obj_player.armor += 1
    }),
	
	// ESCUDO
    new Upgrade("Escudo", "Bloqueia 1 hit", spr_escud, function() {
        obj_player.shield += 1
    }),

    /* ESQUIVA
    new Upgrade("Esquiva", "+5% chance evitar dano", spr_esqu, function() {
        obj_player.dodge_chance += 5

        if (obj_player.dodge_chance > 50)
            obj_player.dodge_chance = 50
    }),

    // VELOCIDADE PROGRESSIVA
    new Upgrade("Adrenalina", "+ rápido com - vida", spr_velprog, function() {
        obj_player.progressive_speed = true
    }),

    // BERSERK
    new Upgrade("Fúria", "Pouca vida aumenta dano", spr_berserk, function() {
        obj_player.berserk_damage += 3
        obj_player.berserk_attack_speed += 5
    }) */
]

// Array que vai guardar os 3 poderes sorteados na tela atual
options = [];
