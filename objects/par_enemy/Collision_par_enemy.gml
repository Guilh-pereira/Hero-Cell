/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//código para fazerem os inimigos se empurrarem
if(scr_pause()){
    exit;
}

var _push = .5

var _dir = point_direction(other.x, other.y, x, y)
var _hspd = lengthdir_x(_push, _dir)
var _vspd = lengthdir_y(_push, _dir)

x += _hspd
y += _vspd