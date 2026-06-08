//Criando loop para quando precionar a seta para baixo descer no menu 
index ++;
audio_play_sound(snd_passando_menu, 0, false);

if(index > op_max_pause - 1){
	index = 0;
}