/// Smoke

draw_set_alpha(0.5 - (obj_Planeee.Fade / 2));
draw_circle_colour(x, y, Size, c_white, c_white, 0);
draw_set_alpha(1);
y -= Speed;
if (y < -16) instance_destroy();