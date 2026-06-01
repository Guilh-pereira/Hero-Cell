/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self() //se desenha na tela

if(show_hp_timer > 0) { //se o timer iniciar desenha a barra de vida
	var _barw = sprite_get_width(spr_life_bar)
	var _draw_x = x - (_barw / 2) + 7
	var _draw_y = bbox_bottom + 2
	draw_sprite_ext(spr_life_bar, -1, _draw_x, _draw_y, 1, 1, 0, c_black, 1)
	draw_sprite_ext(spr_life_bar, -1, _draw_x, _draw_y, (hp/hpMax), 1, 0, c_green, 1)
}