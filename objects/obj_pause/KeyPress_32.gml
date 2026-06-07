//Se o usuario pressinoar a tecla espaço na opção da posição 0(jogar) ele inicia o game.
if(index == 0){
	//volta para o jogo pausado
	instance_destroy(scr_pause());
} else if(index == 1){
	room_goto(Room2);
} else if(index == 2){//Se o usuario pressinoar a tecla espaço na opção da posição 3(Sair) ele encerra o game.
	room_goto(Room0);
}