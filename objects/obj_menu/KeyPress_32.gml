//Se o usuario pressinoar a tecla espaço na opção da posição 0(jogar) ele inicia o game.
if(index == 0){
	//inicia o jogo
	room_goto_next();
}else if (index == 3){//Se o usuario pressinoar a tecla espaço na opção da posição 3(Sair) ele encerra o game.
	game_end();
}