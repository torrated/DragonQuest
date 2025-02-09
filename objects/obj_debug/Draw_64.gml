/// @description 

if (keyboard_check_pressed(ord("P")))
	with (obj_ficha)
	{
		image_index += 1;
	}

with (obj_controles)
	draw_text(0,0,eje_x);