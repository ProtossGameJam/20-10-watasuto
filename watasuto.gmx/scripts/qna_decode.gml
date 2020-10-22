///qna_decode(str)
/*
Q&A 게임에 있는 질문 문자열을 요소별로 풀어서 저장합니다. o_game_qna의 인스턴스
변수를 사용하므로 다른 오브젝트에서 사용하면 안 됩니다.

사용 예시:
   qna_decode('`다람쥐 헌 쳇바퀴에 타고파.`갑`3`을`5`병`7`');

(인자 설명 생략)
*/

var str = argument0, p = 1, q = 0, result;
for(var i = 0; i < 7; i++) {
   while(string_char_at(str, ++q + 1) != '`') {}
   result[i] = string_copy(str, p + 1, q - p);
   p = q + 1;
}

question = result[0];
answer[0] = result[1];
branch[0] = result[2];
answer[1] = result[3];
branch[1] = result[4];
answer[2] = result[5];
branch[2] = result[6];
