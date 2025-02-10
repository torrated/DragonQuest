/// @description 

// completamos las fichas de inicio para que no se puedan sobreescribir

// esquina superior izquierda
var _ficha = instance_create_layer(48,80,"Instances",obj_ficha);
_ficha.posicion = "48,80";
_ficha.arriba = false;
_ficha.derecha = true;
_ficha.abajo = true;
_ficha.izquierda = false;
_ficha.fija = true;

// esquina superior derecha
var _ficha2 = instance_create_layer(432,80,"Instances",obj_ficha);
_ficha2.posicion = "432,80";
_ficha2.arriba = false;
_ficha2.derecha = false;
_ficha2.abajo = true;
_ficha2.izquierda = true;
_ficha2.fija = true;

// esquina inferior izquierda
var _ficha3 = instance_create_layer(48,368,"Instances",obj_ficha);
_ficha3.posicion = "48,368";
_ficha3.arriba = true;
_ficha3.derecha = true;
_ficha3.abajo = false;
_ficha3.izquierda = false;
_ficha3.fija = true;

// esquina inferior derecha
var _ficha4 = instance_create_layer(432,368,"Instances",obj_ficha);
_ficha4.posicion = "432,368";
_ficha4.arriba = true;
_ficha4.derecha = false;
_ficha4.abajo = false;
_ficha4.izquierda = true;
_ficha4.fija = true;

// completamos las fichas del tesoro
var _ficha5 = instance_create_layer(240,208,"Instances",obj_ficha);
_ficha5.posicion = "240,208";
_ficha5.arriba = true;
_ficha5.derecha = true;
_ficha5.abajo = false;
_ficha5.izquierda = true;
_ficha5.fija = true;

var _ficha6 = instance_create_layer(240,240,"Instances",obj_ficha);
_ficha6.posicion = "240,240";
_ficha6.arriba = false;
_ficha6.derecha = true;
_ficha6.abajo = true;
_ficha6.izquierda = true;
_ficha6.fija = true;


grid = {};
grid[$ "48,80"] = [false,true,true,false];
grid[$ "432,80"] = [false, false, true,  true ];
grid[$ "48,368"] = [true, true, false, false];
grid[$ "432,368"] = [true, false, false,  true];
grid[$ "240,208"] = [true, true,  false,  true];
grid[$ "240,240"] = [false,  true, true,  true ];