/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
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
	instance_destroy()
}