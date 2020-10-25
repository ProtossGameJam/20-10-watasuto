/// chat_get_burst()
/*
burst 풀에서 무작위 채팅 메시지를 생성합니다. undefined를 반환할 수 있습니다.
난이도 조절을 위해 별도의 함수로 제공합니다.

사용 예시:
   chat_get_burst()

(인자 없음)
*/

var key, text, rd = random(1), lst;
with(o_chat_system) {
   key = bq[irandom(179)];
   if(!ds_map_exists(db, key))
      return undefined;
   
   lst = db[? key + '%'];
}
for(var i = 0; true; i++)
   if(rd < lst[|i])
      return _chat_substitute(o_chat_system.db[? key + string(i)]);
