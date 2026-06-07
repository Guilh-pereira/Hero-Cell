//Se o usuario pressinoar a tecla enter na opção da posição 0(jogar) ele inicia o game.
if(index == 0){
	room_goto_next();
} else if(index == 2){
	room_goto(Room2);
} else if(index == 3){//Se o usuario pressinoar a tecla enter na opção da posição 3(Sair) ele encerra o game.
	game_end();
}