///watasuto_gameover(game_name, result_sprite, result_text, success, failure, score, likes, dislikes);
/*
게임 오버 시 이 함수를 호출해 주세요. 호출 이후 자동으로 r_result로 이동하고 결과 창을 표시합니다.

사용 예시:
   watasuto_gameover('용건만 간단히', -1, '테스트', correct, wrong, 0, 5, 1);

game_name: r_select에 나오는 미니게임 이름
result_sprite: 나중에 쓸 예정입니다. 일단 -1을 넣어주세요.
result_text: result_sprite와 함께 나올 대강의 결과 메시지입니다.
success: 성공 횟수
failure: 실패 횟수
score: 점수
likes: 보상으로 받은 좋아요 개수
dislikes: 보상으로 받은 안티팬 수 (음수 가능)
*/

var
   _game_name = argument0, _result_sprite = argument1, _result_text = argument2,
   _success = argument3, _failure = argument4, _score = argument5,
   _likes = argument6, _dislikes = argument7;

room_goto(r_result);
global.cleared++;
global.likes += _likes;
global.antifans += _dislikes;
if(global.cleared%2 == 0) {
   global.week++;
   global.subscribers += (global.likes - global.antifans)*0.3;
}
watasuto_save();

with(instance_create(0, 0, o_result)) {
   gameName = _game_name;
   resultSpr = _result_sprite;
   resultText = _result_text;
   successCount = _success;
   failureCount = _failure;
   finalScore = _score;
   likes = _likes;
   dislikes = _dislikes;
}
