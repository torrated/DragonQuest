/// @description 

if (keyboard_check_pressed(ord("P")))
	with (obj_ficha)
	{
		image_index += 1;
	}

draw_text(0,0,"#fichas:"+string(instance_number(obj_ficha)));