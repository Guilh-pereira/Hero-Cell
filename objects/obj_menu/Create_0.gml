//Criando array com as opções do menu.
global.veio_do_pause = false;

draw_set_font(ft_menu);
opcoes = ["Jogar", "Catálogo Viral", "Controles", "Sair"];

//A primeira opção selecionada é Jogar que esta na posição 0.
index = 0;

//variavel que utiliza uma função para ler quantos elementos tem em um array.
op_max = array_length(opcoes);