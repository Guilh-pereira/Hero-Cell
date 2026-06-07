var _pause_button = keyboard_check_pressed(ord("P"));

if(_pause_button){
    if(!instance_exists(obj_pause)){
        instance_create_depth(0, 0, -9999, obj_pause);
    } else {
        with(obj_pause){
            instance_destroy();
        }
    }
}

//verifica se o pause esta ativado ou não
if(scr_pause() == true){
	exit;
}


if(global.levelup == true) {
	alarm[0]++
	if(keyboard_check_pressed(vk_enter)) {
		global.levelup = false
	}
	exit //para de executar todo o código abaixo dele
}

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

if(global.exp >= global.exp_max) { //condição para upar de nível
	global.level++
	global.exp = global.exp - global.exp_max
	
	global.exp_max += 10 //a cada nível vai precisar de mais 10 para o outro, pode ser alterada depois
	//seleção de upgrades
	var _pool = array_shuffle(global.upgrade_pool)
	options = []
	for(var i = 0; i < upgrade_num; i++) {
		// Garante que não vai tentar puxar mais itens do que existem no pool
		if(i < array_length(_pool)){
			array_push(options, _pool[i])
		}
	}
	
	
	global.levelup = true //pausa o jogo e abre a tela de seleção
}