/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

right = -1
up = -1
left = -1
down = -1

hspd = -1 //velocidade horizontal
vspd = -1 //velocidade vertical
spd = 1 //velocidade base do personagem
base_spd = spd //velocidade original para upgrades progressivos
dir = -1 //direção

spell_1_timer = 60 //tempo para disparar
spell_1_cd = spell_1_timer //tempo de cooldown

collect_range = 32 //variavel para determinar a distância de coleta
xp_magnet = collect_range //alcance de magnetismo de XP

hpMax = 20 //vida máxima
hp = hpMax //vida atual
is_damage = false //mostra se está tomando dano
show_hp_timer = 0; //usado para deixar o hp aparecendo por um tempo na tela

projectile_damage = 10 //dano base do projétil
damage_final = projectile_damage //dano final calculado

armor = 0 //reduz dano recebido
dodge_chance = 0 //chance (%) de esquivar
shield = 0 //quantidade de hits bloqueados

hp_regen = 0 //vida regenerada por segundo

berserk_damage = 0 //bonus de dano com pouca vida
berserk_attack_speed = 0 //bonus de ataque com pouca vida

progressive_speed = false //fica mais rapido com pouca vida
