/// Draw

// Blue Background
var clr = $ffcc99;
draw_rectangle_colour(0, 0, room_width / 2, room_height, clr, clr, clr, clr, 0);

// Self
draw_self();

// Fade
Fade += FadeInc;
if (Fade < 0) Fade = 0;
draw_set_alpha(Fade);
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);

// End
if (Fade > 1.6) game_end();