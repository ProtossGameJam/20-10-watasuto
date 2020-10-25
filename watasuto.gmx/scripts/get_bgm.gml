/// get_bgm( room)
// 룸 인덱스를 넣으면 그 룸에 맞는 bgm 인덱스를 반환해줌

var bgm;
switch ( argument0 ) {
    case r_watasuto_title:
    case r_story:
    case r_main:
        bgm = sound_bgm_main;
        break;
    case r_select:
    case r_result:
        bgm = sound_bgm_result;
        break;
    case r_chatting_game:
    case r_unboxing_game:
        bgm = sound_bgm_minigame;
        break;
    case r_callbox_game:
    case r_hammer_game:
        bgm = sound_bgm_minigame_fast;
        break;
    
}

return bgm;
