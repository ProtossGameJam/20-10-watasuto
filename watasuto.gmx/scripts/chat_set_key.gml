/// chat_set_key(key)
/*
채팅에 올라올 메시지 풀을 설정합니다. 이후 최대 5초 동안 관련된 채팅 메시지가 올라옵니다.
가능한 인자는 o_chat_system의 유저 이벤트 0에서 확인할 수 있습니다.

사용 예시:
   chat_set_key('stupid');

(인자 설명 생략)
*/

o_chat_system.now = argument0;
