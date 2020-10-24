///qna_decode(str)
/*
Q&A 게임에 있는 질문 문자열을 요소별로 풀어서 저장합니다. o_game_qna의 인스턴스
변수를 사용하므로 다른 오브젝트에서 사용하면 안 됩니다.

사용 예시:
   qna_decode('`다람쥐 헌 쳇바퀴에 타고파.`갑`3`을`5`병`7`');

구현 노트:
   이 함수에서는 다른 언어에서처럼 문자열 인덱스가 0부터 시작하는 것처럼
   구현되어 있으며, 라이브러리 함수를 호출할 때 +1을 추가합니다. 겜스는 나머지
   전부 0부터 시작하는데 왜 문자열만 1부터인지 모르겠네요.
   
   인자로 받는 문자열은 정규 표현식 /^`[^`]*`([^`]*`\d+`){2,3}$/에 매치되어야
   합니다. regexr.com/5epg6

(인자 설명 생략)
*/

var str = argument0, p = 1, q = 0, result, i = 0;
for(; p != string_length(str); i++) {
   while(string_char_at(str, ++q + 1) != '`') {}
   result[i] = string_copy(str, p + 1, q - p);
   p = q + 1;
}

question = result[0];
answer[0] = result[1];
correct[0] = real(result[2]);
answer[1] = result[3];
correct[1] = real(result[4]);
if(i == 7) {
   answer[2] = result[5];
   correct[2] = real(result[6]);
} else
   correct[2] = -1;
