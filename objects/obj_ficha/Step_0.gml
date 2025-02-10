/// @description 

if (fija) exit;

x = 16+(32*int64((mouse_x)/32));
y = 16+(32*int64((mouse_y)/32));

posicion = string(x)+","+string(y);

// posicion libre en el grid
if (struct_exists(obj_grid.grid,posicion))
{
	colocable = false;
	exit;
}

// dentro del tablero
if !(x >= 48 && x <= 432 && y >= 80 && y <= 368)
{
	colocable = false;
	exit;
}


// junto a al menos a una ficha
if !(struct_exists(obj_grid.grid,string(x)+","+string(y-32)) || 
	struct_exists(obj_grid.grid,string(x+32)+","+string(y))|| 
	struct_exists(obj_grid.grid,string(x)+","+string(y+32))|| 
	struct_exists(obj_grid.grid,string(x-32)+","+string(y)))
{
	colocable = false;
	exit;
}

// conectada correctamente
if (arriba)
{
	if (struct_exists(obj_grid.grid,string(x)+","+string(y-32)))
	{
		var _arriba = obj_grid.grid[$ string(x)+","+string(y-32)][2];
		if (_arriba == 0)
		{
			colocable = false;
			exit;
		}
	}
}
if !(arriba)
{
	if (struct_exists(obj_grid.grid,string(x)+","+string(y-32)))
	{
		var _arriba = obj_grid.grid[$ string(x)+","+string(y-32)][2];
		if (_arriba == 1)
		{
			colocable = false;
			exit;
		}
	}
}


if (abajo)
{
	if (struct_exists(obj_grid.grid,string(x)+","+string(y+32)))
	{
		var _abajo = obj_grid.grid[$ string(x)+","+string(y+32)][0];
		if (_abajo == 0)
		{
			colocable = false;
			exit;
		}
	}
}
if !(abajo)
{
	if (struct_exists(obj_grid.grid,string(x)+","+string(y+32)))
	{
		var _abajo = obj_grid.grid[$ string(x)+","+string(y+32)][0];
		if (_abajo == 1)
		{
			colocable = false;
			exit;
		}
	}
}

if (derecha)
{
	if (struct_exists(obj_grid.grid,string(x+32)+","+string(y)))
	{
		var _derecha = obj_grid.grid[$ string(x+32)+","+string(y)][3]
		if (_derecha == 0)
		{
			colocable = false;
			exit;
		}
	}
}
if !(derecha)
{
	if (struct_exists(obj_grid.grid,string(x+32)+","+string(y)))
	{
		var _derecha = obj_grid.grid[$ string(x+32)+","+string(y)][3]
		if (_derecha == 1)
		{
			colocable = false;
			exit;
		}
	}
}

if (izquierda)
{
	if (struct_exists(obj_grid.grid,string(x-32)+","+string(y)))
	{
		var _izquierda = obj_grid.grid[$ string(x-32)+","+string(y)][1]
		if (_izquierda == 0)
		{
			colocable = false;
			exit;
		}
	}
}
if !(izquierda)
{
	if (struct_exists(obj_grid.grid,string(x-32)+","+string(y)))
	{
		var _izquierda = obj_grid.grid[$ string(x-32)+","+string(y)][1]
		if (_izquierda == 1)
		{
			colocable = false;
			exit;
		}
	}
}

colocable = true;