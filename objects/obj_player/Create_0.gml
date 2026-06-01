/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
right = -1
up = -1
left = -1
down = -1

hspd = -1 //velocidade horizontal
vspd = -1 //velocidade vertical
spd = 1 //velocidade base do personagem
dir = -1 //direção

spell_1_timer = 60 //tempo para disparar
spell_1_cd = spell_1_timer //tempo de cooldown

collect_range = 32 //variavel para determinar a distância de coleta

hpMax = 20 //vida máxima
hp = hpMax //vida atual
is_damage = false //mostra se está tomando dano
show_hp_timer = 0; //usado para deixar o hp aparecendo por um tempo na tela