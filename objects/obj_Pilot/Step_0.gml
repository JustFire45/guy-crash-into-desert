/// Step

if (obj_GameManager.Text[0] == "" and obj_GameManager.Inventory == -1)
{
	// Movement
	if (Move > 0 && obj_GameManager.DT mod 2 == 0)
	{
		Move -= 1;
		obj_CameraObject.x = x + 8;
		obj_CameraObject.y = y + 8;
		if (Dir == 0) x += 1.5 + (Run * 0.5);
		else if (Dir == 1) y -= 1.5 + (Run * 0.5);
		else if (Dir == 2) x -= 1.5 + (Run * 0.5);
		else if (Dir == 3) y += 1.5 + (Run * 0.5);
		if (Move mod 2 == 0) image_index += 1;
	}
	if (Move == 0)
	{
		// Test For Running
		if (keyboard_check(vk_space) && obj_GameManager.P_THR > 20 && obj_GameManager.P_HNG > 20) Run = 1;
		else Run = -1;
		
		// Set Motion
		if (keyboard_check(vk_right)) { if (!place_meeting(x + 8, y, obj_Wall)) { Move = 12 - (Run * 4) scr_tick(); } }
		else if (keyboard_check(vk_up)) { if (!place_meeting(x, y - 8, obj_Wall)) { Move = 12 - (Run * 4); scr_tick(); } }
		else if (keyboard_check(vk_left)) { if (!place_meeting(x - 8, y, obj_Wall)) { Move = 12 - (Run * 4); scr_tick(); } }
		else if (keyboard_check(vk_down)) { if (!place_meeting(x, y + 8, obj_Wall)) { Move = 12 - (Run * 4); scr_tick(); } }
	
		// Set Direction
		if (keyboard_check(vk_right))
		{
			sprite_index = spr_PilotRight;
			Dir = 0;
		}
		else if (keyboard_check(vk_up))
		{
			sprite_index = spr_PilotUp;
			Dir = 1;
		}
		else if (keyboard_check(vk_left))
		{
			sprite_index = spr_PilotLeft;
			Dir = 2;
		}
		else if (keyboard_check(vk_down))
		{
			sprite_index = spr_PilotDown;
			Dir = 3;
		}
	}
}