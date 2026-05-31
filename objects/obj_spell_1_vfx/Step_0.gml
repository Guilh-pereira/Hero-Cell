/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_xscale = scale
image_yscale = scale

scale -= .1 //vai diminuindo o tamanho o tamanho do objeto com o tempo

if(scale <= 0) { //se o tamanho chegar a zero o objeto some
	instance_destroy()
}