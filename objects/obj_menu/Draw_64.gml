//resetando visao para o menu
display_set_gui_size(display_get_width(), display_get_height());

//fazendo background menu oreencher toda tela
draw_sprite_stretched(spr_menu_bg, 0, 0, 0, display_get_gui_width(), display_get_gui_height());

//Usando função para fonte do menu
draw_set_font(ft_menu);

//variavel para distanciar as opcoes do menu
var dist = 85

//Centralizando o menu
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

//Variaveis para deixar no centor(metade) da tela.
var x1 = gui_largura/2;
var y1 = gui_altura/2;


//colocando logo do jogo
draw_sprite_ext(spr_logo, 0, x1, 300, 4, 4, 0, c_white, 50);

//Desenhando o menu utilizando um loop.
for(var i = 0; i < op_max; ++i){
	//fazendo o alinhamento do menu
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);	
	
	//if/else usado para deixar visivel qual opção esta selecionada no menu
	if(index == i){
		draw_set_color(c_green);	
	}else{
		draw_set_color(c_white);
	}
	
	//desenha as opções do menu e coloca a distancia
	draw_text(x1, y1 + (dist * i),opcoes[i]);
}

//É preciso sempre resetar a função para que ela não fique sempre desenhando com essa fonte fora desse obj.
draw_set_font(-1)