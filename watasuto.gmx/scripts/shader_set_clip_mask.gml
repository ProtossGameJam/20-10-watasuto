/// shader_set_clip_mask( surface, x, y)
// 사용 후에 반드시 shader_reset(); 해줄 것.

shader_set(shd_clip_mask);
var u_mask = shader_get_sampler_index(shd_clip_mask, "u_mask");
texture_set_stage(u_mask, surface_get_texture(argument0));
var u_rect = shader_get_uniform(shd_clip_mask, "u_rect");
shader_set_uniform_f(u_rect, argument1, argument2, surface_get_width(argument0), surface_get_height(argument0));
