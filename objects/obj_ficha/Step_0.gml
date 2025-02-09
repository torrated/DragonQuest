/// @description 

if (fija) exit;


// genera una ficha aleatoria
if (instance_exists(obj_controles))
{
	if (obj_controles.enter)
	{
		ficha = fnc_dame_letra();
		sprite_index = struct_get(tipo_ficha,ficha);
	}
	
	if (obj_controles.click)
	{
		var _ficha = instance_copy(false);
		_ficha.fija = true;
	}
}

x = mouse_x;
y = mouse_y;
