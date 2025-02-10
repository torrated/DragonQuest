/// @description 

// completamos las fichas de inicio para que no se puedan sobreescribir

grid = {};
grid[$ "48,80"] = [false,true,true,false]; //esquina superior izquierda
grid[$ "432,80"] = [false, false, true,  true ]; // esquina superior derecha
grid[$ "48,368"] = [true, true, false, false]; // esquina inferior izquierda
grid[$ "432,368"] = [true, false, false,  true]; // esquina inferior derecha
grid[$ "240,208"] = [true, true,  false,  true]; // tesoro superior
grid[$ "240,240"] = [false,  true, true,  true ]; // tesoro inferior