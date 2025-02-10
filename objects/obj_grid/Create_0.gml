/// @description 

grid = {};

// completamos las fichas de inicio para que no se puedan sobreescribir

// esquina superior izquierda
var _ficha = instance_create_layer(48,80,"Instances",obj_ficha);
_ficha.posicion = "48,80";
_ficha.arriba = false;
_ficha.derecha = true;
_ficha.abajo = true;
_ficha.izquierda = false;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);

// esquina superior derecha
_ficha = instance_create_layer(432,80,"Instances",obj_ficha);
_ficha.posicion = "432,80";
_ficha.arriba = false;
_ficha.derecha = false;
_ficha.abajo = true;
_ficha.izquierda = true;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);

// esquina inferior izquierda
_ficha = instance_create_layer(48,368,"Instances",obj_ficha);
_ficha.posicion = "48,368";
_ficha.arriba = true;
_ficha.derecha = true;
_ficha.abajo = false;
_ficha.izquierda = false;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);

// esquina inferior derecha
_ficha = instance_create_layer(432,368,"Instances",obj_ficha);
_ficha.posicion = "432,368";
_ficha.arriba = true;
_ficha.derecha = false;
_ficha.abajo = false;
_ficha.izquierda = true;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);

// completamos las fichas del tesoro
_ficha = instance_create_layer(240,208,"Instances",obj_ficha);
_ficha.posicion = "240,208";
_ficha.arriba = true;
_ficha.derecha = true;
_ficha.abajo = false;
_ficha.izquierda = true;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);
//struct_set(obj_grid.grid,"240,208",1);

_ficha = instance_create_layer(240,240,"Instances",obj_ficha);
_ficha.posicion = "240,240";
_ficha.arriba = false;
_ficha.derecha = true;
_ficha.abajo = true;
_ficha.izquierda = true;
_ficha.fija = true;
struct_set(grid,_ficha.posicion,_ficha);
//struct_set(obj_grid.grid,"240,240",1);