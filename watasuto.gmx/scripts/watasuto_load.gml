///watasuto_load()
/*
저장된 게임을 불러옵니다. 메인 화면으로 자동 이동되지 않습니다.
파일이 없을 경우 0, 그렇지 않을 경우 어떻게든 불러오고 1을 반환합니다.

사용 예시:
   if(watasuto_load()) ...

(인자 없음)
*/

if(!file_exists('watasuto.ini'))
   return 0;

ini_open('watasuto.ini');
global.storyMode = ini_read_real('save', 'storyMode', 0);
global.name = ini_read_string('save', 'name', '스트리머');
global.cleared = ini_read_real('save', 'cleared', 0);
global.week = 1 + global.cleared div 2;

global.subscribers = ini_read_real('save', 'subscribers', 0);
global.likes = ini_read_real('save', 'likes', 0);
global.antifans = ini_read_real('save', 'antifans', 0);
return 1;
