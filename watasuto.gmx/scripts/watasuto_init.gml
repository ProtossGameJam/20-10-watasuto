///watasuto_init()
/*
게임 진행 상황을 초기화합니다. 스트리머 이름은 따로 입력해야 하며, 메인 화면으로 자동
이동하지는 않습니다. 새 게임을 시작할 때 이 함수를 호출해 주세요. 호출하지 않았을
경우 메인 화면으로 들어갈 때 오류가 발생합니다. watasuto_load()를 호출할 경우
호출하지 않아도 됩니다.

사용 예시:
   watasuto_init();

(인자 없음)
*/

global.cleared = 0;
global.week = 1;

global.subscribers = 0;
global.likes = 0;
global.antifans = 0;
