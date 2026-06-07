//fazendo o alinhamento do menu de pause
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

//fazendo uma cor transparente para efeito do menu
draw_set_alpha(alpha);

draw_rectangle_color( 0, 0, _gui_w, _gui_h, c_black, c_black, c_black, c_black, false);

draw_set_alpha(1);

//fazendo o alinhamento
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//desenhando texto de pause
draw_set_colour(c_white)
draw_text(_gui_w / 2, (_gui_h / 2) - 45 ,"PAUSADO");
draw_set_color(1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

//Desenhando o menu utilizando um loop.
for(var i = 0; i < op_max_pause; ++i){
	//fazendo o alinhamento do menu
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	
	
	//if/else usado para deixar visivel qual opção esta selecionada no menu
	if(index == i){
		draw_set_color(c_green);	
	}else{
		draw_set_color(c_white);
	}
	
	//desenha as opções do menu e coloca a distancia
draw_text( _gui_w / 2,(_gui_h / 2) - 20 + (20 * i), opcoes_pause[i]);
}