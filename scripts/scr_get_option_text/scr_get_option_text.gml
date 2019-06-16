/// scr_get_option_text()

var op = obj_GameManager.OptionsCursor;
var ob = obj_GameManager.TextObj;
var d = obj_GameManager.TextID;

scr_tick();

if (ob == "obj_DamagedStealthFighter")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.Text[0] = "You search for any salvageable items...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You search for any salvageable items...\n...but you find nothing.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_DamagedStealthFighter2")
{
	if (op == 0)
	{
		if (d.Op2_1 == 0)
		{
			d.Op2_1 = 1;
			obj_GameManager.Text[0] = "You pick up some metal scraps...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You attempt to pick up some metal scraps...\n...but there are none.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_Crate")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.TextID.image_index = 1;
			obj_GameManager.Text[0] = "You break open the box...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "The box is empty.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_Cactus")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			if (irandom_range(1, 100) <= 80)
			{
				obj_GameManager.Text[0] = "You drank some cactus juice.\nIt didn't taste very good...";
				obj_GameManager.Text[1] = "You became less thirsty anyway (10).";
				obj_GameManager.P_THR += 10;
				if (obj_GameManager.P_THR > 100) obj_GameManager.P_THR = 100;
			}
			else
			{
				obj_GameManager.Text[0] = "You drank some cactus juice.\nYou feel sick...";
				obj_GameManager.Text[1] = "You became more thirsty (5).\nYour HEALTH went down by 10!";
				obj_GameManager.P_THR -= 5;
				obj_GameManager.P_HP -= 10;
			}
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "There is no more cactus juice left.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
	else if (op == 1)
	{
		if (d.Op2 == 0)
		{
			if (irandom_range(1, 100) <= 20)
			{
				d.Op2 = 1;
				obj_GameManager.Text[0] = "You collected some prickly pears...";
			}
			else
			{
				d.Op2 = 2;
				obj_GameManager.Text[0] = "There is no fruit to collect.";
			}
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "There is no fruit to collect.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_WoodenPlane")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.Text[0] = "You search for any salvageable items...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You search for any salvageable items...\n...but you find nothing.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		obj_GameManager.OptionsCursor = 0;
		obj_GameManager.Options = ["", "", "", ""];
	}
	else if (op == 1)
	{
		if (d.Op2 == 0)
		{
			var j = -1;
			var i;
			for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1) { if (i == "0") j = i; }
			if (j > -1)
			{
				d.Op2 = 1;
				obj_GameManager.P_INVC[j] -= 1;
				obj_GameManager.Text[0] = "You lit a match and threw it.\nThe plane burns down.";
			}
			else obj_GameManager.Text[0] = "You attemped to burn down the plane...\n...but you don't have a match.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You search for any salvageable items...\n...but you find nothing.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		obj_GameManager.OptionsCursor = 0;
		obj_GameManager.Options = ["", "", "", ""];
	}
}
else if (ob == "obj_House")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.Text[0] = "You search the house...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You search the house...\n...but you find nothing.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		obj_GameManager.OptionsCursor = 0;
		obj_GameManager.Options = ["", "", "", ""];
	}
}