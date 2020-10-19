/// shader_set_clip_rect( x1, y1, x2, y2)
// 사용 후에 반드시 shader_reset(); 해줄 것.

shader_set(shd_clip_rect);
var u_bounds = shader_get_uniform(shd_clip_rect, "u_bounds");
shader_set_uniform_f(u_bounds, argument0, argument1, argument2, argument3);
