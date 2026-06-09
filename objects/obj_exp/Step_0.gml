/// @description Inserir descrição aqui
if(scr_pause()){
    exit;
}

if(global.levelup == true) {
	exit //para de executar todo o código abaixo dele
}

// verifica se a experiência está dentro do alcance de magnetismo
if(distance_to_object(obj_player) <= obj_player.xp_magnet) {

	// pega a direção até o player
	var _dir = point_direction(x, y, obj_player.x, obj_player.y)

	// calcula velocidade horizontal
	hspd = lengthdir_x(spd, _dir)

	// calcula velocidade vertical
	vspd = lengthdir_y(spd, _dir)

	// move a experiência até o player
	x += hspd
	y += vspd
}
