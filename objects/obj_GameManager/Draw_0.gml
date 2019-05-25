/// Draw

// Set Font
draw_set_font(fnt_PixelFive);

// FPS + Coordinates + MiniBars
draw_text(camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) - 1, "FPS: " + string(fps));
draw_text(camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 5, "X: " + string(round(obj_Pilot.x / 16)));
draw_text(camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 11, "Y: " + string(round(obj_Pilot.y / 16)));
draw_sprite(spr_MiniBars, 0, camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 19);
draw_sprite(spr_MiniBars, 0, camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 23);
draw_sprite(spr_MiniBars, 0, camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 27);
draw_sprite_ext(spr_MiniBars, 1, camera_get_view_x(view_camera[0]) + 2, camera_get_view_y(view_camera[0]) + 19, ceil(P_HP / 4), 1, 0, c_white, 1);
draw_sprite_ext(spr_MiniBars, 2, camera_get_view_x(view_camera[0]) + 2, camera_get_view_y(view_camera[0]) + 23, ceil(P_HNG / 4), 1, 0, c_white, 1);
draw_sprite_ext(spr_MiniBars, 3, camera_get_view_x(view_camera[0]) + 2, camera_get_view_y(view_camera[0]) + 27, ceil(P_THR / 4), 1, 0, c_white, 1);

// Text + Textbox
if (Options[0] != "")
{
	draw_sprite(spr_Textbox, 1, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 64);
	draw_sprite(spr_Textbox, 1, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 78);
	draw_sprite(spr_Textbox, 1, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 92);
	draw_sprite(spr_Textbox, 1, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 106);
	draw_sprite(spr_Textbox, 2, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 64 + (OptionsCursor * 14));
	draw_text_ext(camera_get_view_x(view_camera[0]) + 40, camera_get_view_y(view_camera[0]) + 66, Options[0], 7, 1000);
	draw_text_ext(camera_get_view_x(view_camera[0]) + 40, camera_get_view_y(view_camera[0]) + 80, Options[1], 7, 1000);
	draw_text_ext(camera_get_view_x(view_camera[0]) + 40, camera_get_view_y(view_camera[0]) + 94, Options[2], 7, 1000);
	draw_text_ext(camera_get_view_x(view_camera[0]) + 40, camera_get_view_y(view_camera[0]) + 108, Options[3], 7, 1000);
}
if (Text[0] != "")
{
	draw_sprite(spr_Textbox, 0, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 120);
	if (string_copy(Text[TextText], 1, 8) == "Obtained") draw_set_colour(c_yellow);
	draw_text_ext(camera_get_view_x(view_camera[0]) + 23, camera_get_view_y(view_camera[0]) + 122, Text[TextText], 7, 1000);
	draw_set_colour(c_white);
}

// Move Options Cursor
if (keyboard_check_pressed(vk_down) and OptionsCursor < 3) OptionsCursor += 1;
else if (keyboard_check_pressed(vk_up) and OptionsCursor > 0) OptionsCursor -= 1;

// Select Option
if (Options[0] != "")
{
	if (TextWait < 2) TextWait += 1;
	else
	{
		if (keyboard_check_pressed(ord("X")))
		{
			Text = [""];
			TextText = 0;
			TextWait = 0;
			Options = ["", "", "", ""];
			OptionsCursor = 0;
			TextObj = noone;
		}
		else if (keyboard_check_pressed(vk_space) and Options[OptionsCursor] != "")
		{
			TextWait = 0;
			Text = [""];
			Options = ["", "", "", ""];
			OptionsCursor = 0;
			scr_get_option_text();
		}
	}
}

// Progress Text
else if (Text[0] != "")
{
	show_debug_message(Text[0]);
	if (TextWait < 2) TextWait += 1;
	if (keyboard_check_pressed(vk_space) and TextWait == 2)
	{
		if (TextText < array_length_1d(Text) - 1) TextText += 1;
		else
		{
			Text = [""];
			TextText = 0;
			TextWait = 0;
			TextObj = noone;
		}
	}
}

// Draw Inventory
if (Inventory > 0)
{
	// Outline
	draw_sprite(spr_Inventory, 0, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 8);
	if (InventoryOption > 0) draw_sprite(spr_Inventory, InventoryOption, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 8);
	
	// HP, HNG, THR
	draw_sprite_ext(spr_Inventory, 5, camera_get_view_x(view_camera[0]) + 58, camera_get_view_y(view_camera[0]) + 14, P_HP, 1, 0, c_white, 1);
	draw_sprite_ext(spr_Inventory, 6, camera_get_view_x(view_camera[0]) + 58, camera_get_view_y(view_camera[0]) + 25, P_HNG, 1, 0, c_white, 1);
	draw_sprite_ext(spr_Inventory, 7, camera_get_view_x(view_camera[0]) + 58, camera_get_view_y(view_camera[0]) + 36, P_THR, 1, 0, c_white, 1);
	
	// Inventory Boxes
	var i;
	for (i = 0; i < P_INVS; i += 1)
	{
		var j = 4;
		if (i == InventorySelect) j = 3;
		draw_sprite(spr_Inventory, j, camera_get_view_x(view_camera[0]) + 30 + (i * 25), camera_get_view_y(view_camera[0]) + 62);
		if (P_INV[i] != -1) draw_sprite(spr_InventoryIcons, P_INV[i], camera_get_view_x(view_camera[0]) + 32 + (i * 25), camera_get_view_y(view_camera[0]) + 64);
	}
	
	// Item Name
	if (P_INV[InventorySelect] != -1) draw_text(camera_get_view_x(view_camera[0]) + 46, camera_get_view_y(view_camera[0]) + 111, P_INVN[InventorySelect] + " [x" + string(P_INVC[InventorySelect]) + "]");
}