/// Step

// Increment Delta Time
DT += 1;

// Play Song
if (DT mod 60 == 0) TrackT -= 1;
if (TrackT <= 0)
{
	audio_stop_all();
	Track *= -1;
	TrackT = irandom_range(120, 180);
	audio_play_sound(0.5 + Track, 0, 0);
}

// Debug
var test = 0;
if (test == 1)
{
	show_debug_message("Seed: " + string(random_get_seed()));
	show_debug_message("obj_Base: " + string(instance_number(obj_Base)));
	show_debug_message("");
	
	if (keyboard_check_pressed(ord("R"))) room_restart();
	if (keyboard_check_pressed(ord("0"))) room_goto(rm_Credits);
}

// Other
if (Steps > 12) DSF_Smoke = 0;
else if (Steps >= 10) DSF_Smoke = 19;
else if (Steps >= 8) DSF_Smoke = 5;
else if (Steps >= 6) DSF_Smoke = 4;
else if (Steps >= 4) DSF_Smoke = 3;
else if (Steps >= 2) DSF_Smoke = 2;

// Open / Close Inventory
if (P_HP > 0)
{
	if (keyboard_check_pressed(vk_tab) and obj_Pilot.Move == 0 and Text[0] == "" and InventoryOption == 0) Inventory *= -1;
	else if (keyboard_check_pressed(ord("X")) and obj_Pilot.Move == 0 and Text[0] == "" and InventoryOption == 0) Inventory = -1;
}

// Inventory Update
if (Inventory > 0)
{
	// Scroll Through Inventory
	if (InventoryOption == 0)
	{
		if (keyboard_check_pressed(vk_left) and InventorySelect > 0) InventorySelect -= 1;
		else if (keyboard_check_pressed(vk_right) and InventorySelect < P_INVS - 1) InventorySelect += 1;
	}
	
	// Use Items in Slot
	if (keyboard_check_pressed(vk_space) and InventoryOption == 1)
	{
		Inventory = -1;
		InventoryOption = 3;
		scr_use_item();
	}
	
	// Discard Items in Slot
	else if (keyboard_check_pressed(vk_space) and InventoryOption == 2)
	{
		Inventory = -1;
		InventoryOption = 3;
		Text[0] = "You discarded < " + P_INVN[InventorySelect] + " [x" + string(P_INVC[InventorySelect]) + "] >";
		P_INV[InventorySelect] = -1;
		P_INVN[InventorySelect] = "";
		P_INVC[InventorySelect] = 0;
	}
	
	// Inventory Items
	if (keyboard_check_pressed(vk_space) and P_INV[InventorySelect] != -1 and InventoryOption == 0)
	{
		InventoryOption = 1;
	}
	else if (keyboard_check_pressed(ord("X")) and InventoryOption > 0)
	{
		InventoryOption = 0;
	}

	if (InventoryOption > 0)
	{
		if (keyboard_check_pressed(vk_left) and InventoryOption > 1) InventoryOption -= 1;
		else if (keyboard_check_pressed(vk_right) and InventoryOption < 2) InventoryOption += 1;
	}
	
	// Reset "InventoryOption"
	if (InventoryOption == 3) InventoryOption = 0;
}
else
{
	InventorySelect = 0;
}