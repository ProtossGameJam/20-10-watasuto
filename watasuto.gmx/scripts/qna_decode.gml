///qna_decode(line)
/*
Q&A 게임에 있는 질문 문자열을 요소별로 풀어서 저장합니다. o_game_qna의 인스턴스
변수를 사용하므로 다른 오브젝트에서 사용하면 안 됩니다.

사용 예시:
   qna_decode(5);

구현 노트:
   이 함수에서는 다른 언어에서처럼 문자열 인덱스가 0부터 시작하는 것처럼
   구현되어 있으며, 라이브러리 함수를 호출할 때 +1을 추가합니다. 겜스는 나머지
   전부 0부터 시작하는데 왜 문자열만 1부터인지 모르겠네요.

line: 읽어들일 줄 수
*/

var
   line = argument0, str = lines[line],
   sl = string_length(str), cl = string_length(chat[line]), bl = string_length(burst[line]),
   result,
   p = 1, i = 0;
for(; p != sl; i++) {
   result[i] = string_next_token(str, '`', p + 1);
   p += string_length(result[i]) + 1;
}

question = result[0];
answer[0] = result[1];
answerText[0] = result[2];
correct[0] = real(result[3]);
answer[1] = result[4];
answerText[1] = result[5];
correct[1] = real(result[6]);
if(i == 10) {
   answer[2] = result[7];
   answerText[2] = result[8];
   correct[2] = real(result[9]);
} else
   correct[2] = -1;

p = 0;
for(var i = 0; i < 3; i++) {
   qchat[i] = string_next_token(chat[line], '`', p + 1);
   p += string_length(qchat[i]) + 1;
}

p = 0;
for(var i = 0; i < 3; i++) {
   qburst[i] = string_next_token(burst[line], '`', p + 1);
   p += string_length(qburst[i]) + 1;
}
