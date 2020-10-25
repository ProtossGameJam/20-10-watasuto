/// room_change(room)

if !instance_exists(o_room_changer){
var i = instance_create(0,0,o_room_changer);
i.action = argument0;
}
var bgm = get_bgm(room);
if (bgm != get_bgm(argument0)) {
    if (audio_is_playing(bgm)) {
        audio_sound_gain(bgm, 0, 400);
    }
}
