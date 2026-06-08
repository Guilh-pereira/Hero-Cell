//Criando array com as opções do menu.
global.bgm = -1;
global.music_type = "";

if (global.bgm != -1)
{
    audio_stop_sound(global.bgm);
}

global.bgm = audio_play_sound(snd_menu, 1, true);
global.music_type = "menu";

draw_set_font(ft_menu);
opcoes = ["Jogar", "Catálogo Viral", "Controles", "Sair"];

//A primeira opção selecionada é Jogar que esta na posição 0.
index = 0;

//variavel que utiliza uma função para ler quantos elementos tem em um array.
op_max = array_length(opcoes);