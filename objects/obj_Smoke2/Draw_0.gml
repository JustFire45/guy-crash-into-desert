/// Smoke

draw_set_alpha(0.5);
draw_circle_colour(x, y, Size, c_black, c_black, 0);
draw_set_alpha(1);
move_towards_point(xx, yy, random_range(0.5, 1));
Moved += 1;
if (Moved >= 20) instance_destroy();