//Se o usuario pressinoar a tecla espaço na opção da posição 0(jogar) ele inicia o game.
audio_play_sound(snd_selecionar, 0, false);

if(index == 0){
	//volta para o jogo pausado
	audio_resume_sound(global.bgm);
	instance_destroy();
} else if(index == 1){//Se o usuario pressinoar a tecla espaço na opção da posição 1(Sair) ele encerra o game.
	room_goto(Room0);
}