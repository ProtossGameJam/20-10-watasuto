/// _chat_substitute(str)
/*
선택된 채팅 메시지를 규칙에 따라 치환합니다. chat_* 함수에서 사용하는 내부 함수입니다.

사용 예시:
   _chat_substitute('_하[~ 0 3];\');

구현 노트:
   이 함수에서는 다른 언어에서처럼 문자열 인덱스가 0부터 시작하는 것처럼
   구현되어 있으며, 라이브러리 함수를 호출할 때 +1을 추가합니다. 겜스는 나머지
   전부 0부터 시작하는데 왜 문자열만 1부터인지 모르겠네요.

(인자 설명 생략)
*/

var
   str = string_replace_all(
      string_replace_all(argument0, '__', global.name),
      '_',
      string_char_at(global.name, 1)
   ),
   len = string_length(str),
   i = 0;

for(var i = 0; i < len; i++)
   switch(string_char_at(str, i + 1)) {
      case '[': {
         var subst, mn, mx, sl, j = i + 1;
         subst = string_next_token(str, ' ', j + 1);
         j += string_length(subst) + 1;
         mn = string_next_token(str, ' ', j + 1);
         j += string_length(mn) + 1;
         mx = string_next_token(str, ']', j + 1);
         j += string_length(mx) + 1;
         subst = string_repeat(subst, irandom_range(real(mn), real(mx)));
         sl = string_length(subst);
         str =
            string_copy(str, 1, i) +
            subst +
            string_copy(str, j + 1, len - j);
         len += sl - j + i;
         i += sl - 1;
      } break;
      case '@': {
         var subst = '', sl;
         if(object_index == o_game_qna)
            subst = historyText[real(string_char_at(str, i + 2))];
         sl = string_length(subst);
         str =
            string_copy(str, 1, i) +
            subst +
            string_copy(str, i + 3, len - i - 2);
         len += sl - 2;
         i += sl - 1;
      } break;
   }

return str;
