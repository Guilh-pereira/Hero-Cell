/// @description Inserir descrição aqui
draw_set_font(ft_upgrades);

if(global.levelup == true) {
	var _sprw = sprite_get_width(spr_level_up_hud)
	var _sprh = sprite_get_height(spr_level_up_hud)
	var _buffer = 4
	var _xx = display_get_gui_width()/2
	var _yy = display_get_gui_height()/2 - _sprh - _buffer
	var _mx = device_mouse_x_to_gui(0) //pega a posição x do mouse referente ao GUI
	var _my = device_mouse_y_to_gui(0) //pega a posição y do mouse referente ao GUI
	
	draw_set_alpha(0.7)
	draw_rectangle_colour(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
	
	
	for(var i = 0; i < upgrade_num; i++) { //código para fazer as caixas de escolhas de upgrade aparecerem
		var _spry = _yy + (_sprh + _buffer) * i
		var _upg = options[i] // Pega a struct específica desta caixa
		
		if(point_in_rectangle(_mx, _my, _xx - _sprw/2, _spry - _sprh/2,  _xx + _sprw/2, _spry + _sprh/2)) {
			upgrade_alpha = 1
			upgrade_scale = 1.1
			
			if(mouse_check_button_pressed(mb_left)) {
				_upg.on_upgrade();
				audio_play_sound(snd_selecionar_power_up, 0, false);
				global.levelup = false; //despausa o jogo
				
			}
			
		} else{
			upgrade_alpha = 0.7
			upgrade_scale = 1
		}
		
		//desenha a hud de upgrade
		draw_sprite_ext(spr_level_up_hud, -1, _xx, _spry, upgrade_scale, upgrade_scale, 0, c_white, upgrade_alpha)
		
		
		//desenha as sprites 
		var _icon_x = _xx + ((-_sprw / 2) + 12) * upgrade_scale
		var _icon_y = _spry // Centralizado verticalmente na caixa
		draw_sprite_ext(_upg.sprite, -1, _icon_x, _icon_y, upgrade_scale, upgrade_scale, 0, c_white, upgrade_alpha)
		
		//desenha os textos
		draw_set_halign(fa_left);
        draw_set_color(c_white);
		
		var _text_x = _xx + ((-_sprw / 2) + 26) * upgrade_scale; 
        var _max_width_pixels = 66; // espaço que sobra para o texto antes de acabar a caixa
		
		//desenha o nome do upgrade
		draw_set_valign(fa_top);
        draw_text_transformed(_text_x,_spry - (11 * upgrade_scale), _upg.nome, 0.45, 0.45, 0);
		
		// desenha a descrição
        // O '6' ali é o espaçamento vertical entre as linhas caso o texto quebre
        draw_text_ext_transformed(_text_x, _spry + (1 * upgrade_scale), _upg.desc, 6 * upgrade_scale, _max_width_pixels / 0.35, 0.35, 0.35, 0);
		
		
	}
	// Reseta o alinhamento padrão do GameMaker para não bugar outros textos do jogo
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	exit //para de executar todo o código abaixo dele
}

//código para desenhar a barra de exp
draw_sprite(spr_exp_hud, -1, 0, 0) //desenha um sprite na viewport
draw_sprite_ext(spr_exp_bar, -1, 1, 1, global.exp/global.exp_max, 1, 0, c_white, 1)

draw_set_font(1);