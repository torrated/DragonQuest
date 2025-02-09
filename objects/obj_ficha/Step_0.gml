/// @description 


// genera una ficha aleatoria
with (obj_controles)
{
	if (enter)
	{
		other.ficha = fnc_dame_letra();
		other.sprite_index = struct_get(other.tipo_ficha,other.ficha);
	}
}

x = mouse_x;
y = mouse_y;