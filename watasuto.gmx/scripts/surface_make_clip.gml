/// surface_make_clip( surface, width, height)

var __mask = argument0;
if (!surface_exists(__mask)) {
    __mask = surface_create(argument1, argument2);
}
surface_set_target(__mask);
draw_clear_alpha(c_white, 0);
draw_set_color(c_white);
    
return __mask;
