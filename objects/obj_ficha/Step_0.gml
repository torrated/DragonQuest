/// @description 

if (fija) exit;

x = 16+(32*int64((mouse_x)/32));
y = 16+(32*int64((mouse_y)/32));

posicion = string(x)+","+string(y);

if (struct_exists(obj_grid.grid,posicion))
{
	colocable = false;
	exit;
}
else
	colocable = true;