/// Step

y -= random_range(0.05, 0.2);
image_alpha -= 0.02;
if (image_alpha <= -0) instance_destroy();
else if (image_alpha <= 0.33) image_index = 2;
else if (image_alpha <= 0.66) image_index = 1;