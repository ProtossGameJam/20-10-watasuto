/// draw_text_outline(x, y, str, outwidth, outcol, outfidelity)
/*
문서화 나중에 해야징 ㅁㄴㅇㄻㄹㅇㅁㄴㄹㅇㅁㄴㄹㅇㅁ
*/
// outfidelity: Fidelity of outline ( 4, 8, 16 )

var col=draw_get_color();

draw_set_color(argument4);

for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
{
    draw_text(argument0+round(lengthdir_x(argument3,dto_i)),argument1+round(lengthdir_y(argument3,dto_i)),argument2);
}

draw_set_color(col);

draw_text(argument0,argument1,argument2);
