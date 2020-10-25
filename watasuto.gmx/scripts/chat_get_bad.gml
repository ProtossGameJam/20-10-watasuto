/// chat_get_bad()
/*
악플을 하나 생성합니다.

사용 예시:
   chat_get_bad()

(인자 없음)
*/

var rd = random(1), lst = o_chat_system.db[?'bad%'];
for(var i = 0; true; i++)
   if(rd < lst[|i])
      return _chat_substitute(o_chat_system.db[? 'bad' + string(i)]);
