/// @description Inserir descrição aqui
randomize()
// game_get_speed(gamespeed_fps) vai retornar o FPS alvo do seu jogo (geralmente 60)
// 60 * 2 = 120 passos (ou seja, 2 segundos)
spawn_timer = game_get_speed(gamespeed_fps) * 2; //a cada 2 segundos nasce um inimigo