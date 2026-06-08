persistent = true;

global.bgm = -1;
global.music_type = "";

if (!audio_is_playing(global.bgm))
{
    global.bgm = audio_play_sound(snd_menu, 1, true);
}
