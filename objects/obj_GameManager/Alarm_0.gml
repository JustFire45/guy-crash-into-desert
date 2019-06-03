/// Activate / Deactivate Instances Outside of View

instance_deactivate_all(true);
instance_activate_region(camera_get_view_x(view_camera[0]) - 32, camera_get_view_y(view_camera[0]) - 32, 320, 208, true);

alarm[0] = 15;