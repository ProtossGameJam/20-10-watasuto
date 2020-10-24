/// chat_start()
/*
채팅 모드를 시작합니다. 나머지 chat_* 함수를 실행하기 전에 반드시 호출해야 합니다.

사용 예시:
   chat_start();

(인자 없음)
*/

if(!instance_exists(o_chat_system))
   instance_create(0, 0, o_chat_system);
with(o_chat_system)
   event_user(1);
o_chat_system.running = true;
