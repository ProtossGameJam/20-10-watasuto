/// draw_window_ext(spr, subimg, x, y, width, height, colour, alpha)
/*
9-patch로 색상 및 알파 블렌딩이 적용된 직사각형 창을 그립니다.

사용 예시:
   draw_window(spr_textbar, 0, 144, room_height - 200, room_width - 144*2, 94, $ffffff, 0.65);

spr: 창의 모양. spr_textbar, spr_stage_title, spr_stage_thumb 중 하나입니다.
(나머지 인자는 생략)
*/

// fix settings
var spr = argument0;

switch(spr) {
    case spr_textbar:
    case spr_stage_title:
    case spr_stage_thumb:
    case spr_dyk_textbar:
        var l_w = 10;
        var r_w = 10;
        var t_h = 10;
        var b_h = 10;
        break;
}
var m_w = sprite_get_width(spr) - l_w - r_w;
var m_h = sprite_get_height(spr) - t_h - b_h;




// arguments
var px = argument2;
var py = argument3;
var w = argument4;
var h = argument5;
var col = argument6;
var alpha = argument7;

// left_top
draw_sprite_part_ext(
   spr, argument1,
   0, 0, l_w, t_h,
   px, py,
   1, 1,
   col, alpha
);
// center_top
draw_sprite_part_ext(
   spr, argument1,
   l_w, 0, m_w, t_h,
   px+l_w, py,
   (w-l_w-r_w)/m_w, 1,
   col, alpha
);
// right_top
draw_sprite_part_ext(
   spr, argument1,
   sprite_get_width(spr) - r_w, 0, r_w, t_h,
   px+w-r_w, py,
   1, 1,
   col, alpha
);

// left_middle
draw_sprite_part_ext(
   spr, argument1,
   0, t_h, l_w, m_h,
   px, py+t_h,
   1, (h-t_h-b_h)/m_h,
   col, alpha
);
// center_middle
draw_sprite_part_ext(
   spr, argument1,
   l_w, t_h, m_w, m_h,
   px+l_w, py+t_h,
   (w-l_w-r_w)/m_w, (h-t_h-b_h)/m_h,
   col, alpha
);
// right_middle
draw_sprite_part_ext(
   spr, argument1,
   sprite_get_width(spr) - r_w, t_h, r_w, m_h,
   px+w-r_w, py+t_h,
   1, (h-t_h-b_h)/m_h,
   col, alpha
);

// left_bottom
draw_sprite_part_ext(
   spr, argument1,
   0, sprite_get_height(spr) - b_h, l_w, b_h,
   px, py+h-b_h,
   1, 1,
   col, alpha
);
// center_bottom
draw_sprite_part_ext(
   spr, argument1,
   l_w, sprite_get_height(spr) - b_h, m_w, b_h,
   px+l_w, py+h-b_h,
   (w-l_w-r_w)/m_w, 1,
   col, alpha
);
// right_bottom
draw_sprite_part_ext(
   spr, argument1,
   sprite_get_width(spr) - r_w, sprite_get_height(spr) - b_h, r_w, b_h,
   px+w-r_w, py+h-b_h,
   1, 1,
   col, alpha
);
