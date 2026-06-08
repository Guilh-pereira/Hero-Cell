

if(keyboard_check_pressed(vk_enter)) || keyboard_check_pressed(vk_space){
	audio_play_sound(snd_selecionar, 0, false);
	room_goto(Room0);
}