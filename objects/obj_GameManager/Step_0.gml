/// Step

// Increment Delta Time
DT += 1;

// Debug
var test = 1;
if (test == 1)
{
	show_debug_message("Seed: " + string(random_get_seed()));
	show_debug_message("Inventory: " + string(Inventory));
	show_debug_message("InventoryOption: " + string(InventoryOption));
	show_debug_message("OptionsCursor: " + string(OptionsCursor));
	show_debug_message("");
	
	if (keyboard_check_pressed(ord("R"))) room_restart();
}

// Other
if (Steps >= 30) DSF_Smoke = 0;
else if (Steps >= 25) DSF_Smoke = 19;
else if (Steps >= 20) DSF_Smoke = 5;
else if (Steps >= 15) DSF_Smoke = 4;
else if (Steps >= 10) DSF_Smoke = 3;
else if (Steps >= 5) DSF_Smoke = 2;

// Open / Close Inventory
if (keyboard_check_pressed(vk_tab) and obj_Pilot.Move == 0 and Text[0] == "" and InventoryOption == 0) Inventory *= -1;
else if (keyboard_check_pressed(ord("X")) and obj_Pilot.Move == 0 and Text[0] == "" and InventoryOption == 0) Inventory = -1;

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
	
	// Reset "InventoryOption" (quick solution, probably not good in the long run idk. it depends)
	if (InventoryOption == 3) InventoryOption = 0;
}
else
{
	InventorySelect = 0;
}