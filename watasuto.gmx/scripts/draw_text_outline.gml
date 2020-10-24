/// draw_text_outline(x, y, str, outwidth, outcol, outfidelity)
/*
테두리가 적용된 텍스트를 그립니다. 실제 텍스트 위치에서 주어진 거리만큼 떨어진
여러 위치에 추가 텍스트를 그리는 방식으로 구현되어 있습니다.

사용 예시:
   draw_text_outline(16, 16, '다람쥐 헌 쳇바퀴', 2, $94941c, 4);

outwidth: 테두리 두께 (실제 텍스트와 테두리 사이의 거리)
outcol: 테두리 색상
outfidelity: 테두리 정확도 (테두리 텍스트를 그릴 횟수. 4, 8, 16을 권장)
(나머지 인자는 생략)
*/

var col=draw_get_color();

draw_set_color(argument4);

for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
{
    draw_text(argument0+round(lengthdir_x(argument3,dto_i)),argument1+round(lengthdir_y(argument3,dto_i)),argument2);
}

draw_set_color(col);

draw_text(argument0,argument1,argument2);
