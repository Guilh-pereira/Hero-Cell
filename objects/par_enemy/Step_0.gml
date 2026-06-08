//verifica se o pause esta ativado ou não
if(scr_pause() == true){
	exit;
}

if(global.levelup == true) {
	exit //para de executar todo o código abaixo dele
}

//código para fazerem os inimigos reaparecerem depois de sumirem da tela
depth = -y
var _border = 64
if (y < global.cmy - _border) {
	y = global.cmy + global.cmh + _border
}

if (y > global.cmy + global.cmh + _border) {
	y = global.cmy - _border
}

if(x < global.cmx - _border) {
	x = global.cmx + global.cmw + _border
}

if(x > global.cmx + global.cmw + _border) {
	x = global.cmx - _border
}

//faz os inimigos sempre apontarem para o player
dir = point_direction(x, y, obj_player.x, obj_player.y)
hspd = lengthdir_x(spd, dir)
vspd = lengthdir_y(spd, dir)

x += hspd
y += vspd

if(hp <= 0) {
	repeat(3) { //repete o que está dentro 3 vezes
		var _xx = irandom_range(-10, 10)
		var _yy = irandom_range(-10, 10)
		instance_create_layer(x + _xx, y + _yy, "Instances", obj_exp) //quando derrotar um inimigo gera exp
	}
	
	instance_destroy()
	
}