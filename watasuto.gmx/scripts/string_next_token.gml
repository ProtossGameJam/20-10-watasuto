///string_next_token(str, delim, from)
/*
주어진 문자열을 from번째 글자부터 delim이 등장할 때까지, 혹은 문자열이 끝날 때까지
잘라서 반환합니다. 자르는 걸 너무 자주 해서 만든 헬퍼 함수입니다.

사용 예시:
   string_next_token('`foo`bar`baz`', '`', 2);

구현 노트:
   이 함수의 from 인자를 포함한 모든 문자열 인덱스는 1부터 시작합니다.

str: 자를 문자열
delim: 자를 기준이 되는 문자. 1글자 문자열만 입력할 수 있습니다.
       빈 문자열을 입력하면 문자열의 끝까지 잘라서 반환합니다.
from: 자르기를 시작할 위치. 1부터 시작합니다.
*/

var
   str = argument0,
   len = string_length(str),
   delim = argument1,
   from = argument2;

if(delim != '')
   for(var i = from; i <= len; i++)
      if(string_char_at(str, i) == delim)
         return string_copy(str, from, i - from);
return string_delete(str, 1, from - 1);
