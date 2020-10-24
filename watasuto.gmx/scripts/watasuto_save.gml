///watasuto_save()
/*
게임 진행 상황을 저장합니다. 스토리 모드 여부, 스트리머 이름, 플레이한 미니게임 개수,
구독자 수, 좋아요, 안티팬 수를 저장합니다. 주차는 미니게임 개수로부터 역산할 수
있으므로 저장하지 않습니다.

사용 예시:
   watasuto_save();

(인자 없음)
*/

ini_open('watasuto.ini');
ini_write_real('save', 'storyMode', global.storyMode);
ini_write_string('save', 'name', global.name);
ini_write_real('save', 'cleared', global.cleared);
ini_write_real('save', 'subscribers', global.subscribers);
ini_write_real('save', 'likes', global.likes);
ini_write_real('save', 'antifans', global.antifans);
ini_close();
