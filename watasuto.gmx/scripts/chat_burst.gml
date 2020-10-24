/// chat_burst(key)
/*
채팅에 단시간에 여러 개 올라올 메시지 풀을 설정합니다. chat_set_key로 설정한
메시지 풀과는 별개입니다. 최대 6초 뒤에 자동으로 정지합니다.
가능한 인자는 o_chat_system의 유저 이벤트 0에서 확인할 수 있습니다.

사용 예시:
   chat_burst('lol');

(인자 설명 생략)
*/

o_chat_system.bn = argument0;
o_chat_system.btime = 180;
