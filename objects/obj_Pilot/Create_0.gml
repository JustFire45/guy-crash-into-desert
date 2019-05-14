/// Init

// Create "obj_CameraObject"
instance_create_depth(x, y, 0, obj_CameraObject);
obj_CameraObject.x = x + 8;
obj_CameraObject.y = y + 8;

// Variables
image_speed = 0;
Move = 0;
Dir = 0;
Run = -1;

// Map Keys
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(vk_enter, vk_space);
keyboard_set_map(ord("Z"), vk_space);
keyboard_set_map(vk_backspace, ord("X"));
keyboard_set_map(ord("C"), vk_tab);
keyboard_set_map(vk_shift, vk_tab);