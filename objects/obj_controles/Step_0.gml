audio_play_sound(snd_selecionar, 0, false);

if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space)){
    room_goto(Room0);
}