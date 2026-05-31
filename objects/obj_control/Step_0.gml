/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _side = irandom(1) //pega um valor aleatório entre 0 e 1

if (alarm[0] <= 0) {
	if (_side == 0) {
		var _xx = irandom_range(global.cmx, global.cmx + global.cmw) //pega um valor aleatório dentro de um range
		var _yy = choose(global.cmy - 16, global.cmy + global.cmh + 16) //pega de forma aleatório os valores dentro do parenteses
		instance_create_layer(_xx, _yy, "Instances", obj_enemy)
	}
	if (_side == 1) {
		var _xx = choose(global.cmx - 16, global.cmx + global.cmw + 16) //pega um valor aleatório dentro de um range
		var _yy = irandom_range(global.cmy, global.cmy + global.cmh) //pega de forma aleatório os valores dentro do parenteses
		instance_create_layer(_xx, _yy, "Instances", obj_enemy)
	}
	alarm[0] = spawn_timer
}
