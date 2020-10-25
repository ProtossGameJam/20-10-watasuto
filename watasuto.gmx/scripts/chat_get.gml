/// chat_get()
/*
무작위 채팅 메시지를 생성합니다. 채팅 모드가 시작된 지 얼마 되지 않았을 경우
사람이 많이 모이지 않은 것을 반영해 undefined를 반환할 수 있습니다.

사용 예시:
   chat_get()

(인자 없음)
*/

var key, rd = random(1), lst;
with(o_chat_system) {
   if(irandom(1))
      key = stq[irandom(119)];
   else
      key = ltq[irandom(299)];
   if(!ds_map_exists(db, key))
      return undefined;
   
   if(room != r_qna_game && random(1) < 0.05)
      key = 'random';
   lst = db[? key + '%'];
}
for(var i = 0; true; i++)
   if(rd < lst[|i])
      return _chat_substitute(o_chat_system.db[? key + string(i)]);
