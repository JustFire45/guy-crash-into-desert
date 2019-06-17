/// Step

// Fly Into View
if (y < 56) y += 1;

// Smoke
if (choose(0, 1) == 1)
{
	var i;
	for (i = 0; i < 10; i += 1)
	{
		instance_create_depth(x + 10 + random_range(-1, 1), y, -100, obj_Smoke2);
		instance_create_depth(x + 20 + random_range(-1, 1), y, -100, obj_Smoke2);
	}
}

// Clouds
if (irandom_range(1, 100) < 20)
{
	instance_create_depth(x, y, -200, obj_Cloud);
}

// Check OST
if (!audio_is_playing(mus_credits))
{
	FadeInc = 0.01;
}