//Criando loop para quando precionar a seta para cima subir no menu 
index --;
audio_play_sound(snd_passando_menu, 0, false);

if(index < 0){
	index = op_max_pause - 1 ;
}