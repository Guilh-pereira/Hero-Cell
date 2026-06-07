if(scr_pause()){
    exit;
}

if(global.levelup == true) {
	alarm[0]++
	speed = 0
	exit //para de executar todo o código abaixo dele
} else {
	speed = 2
}

if (alarm[0] <= 0) { //serve para gerar um efeito bonitinho
	instance_create_layer(x, y, "Instances", obj_spell_1_vfx)
	alarm[0] = 3
}