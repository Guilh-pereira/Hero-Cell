if(scr_pause()){
    exit;
}

if(global.levelup == true) {
	exit //para de executar todo o código abaixo dele
}

image_xscale = scale
image_yscale = scale

scale -= .1 //vai diminuindo o tamanho o tamanho do objeto com o tempo

if(scale <= 0) { //se o tamanho chegar a zero o objeto some
	instance_destroy()
}