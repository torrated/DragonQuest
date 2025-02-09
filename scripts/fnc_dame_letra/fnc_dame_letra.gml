/// @function                fnc_dame_letra()
/// @description             Devuelve un tipo de (A,B,C,D,E) en funcion de las probabilidades 20,20,20,35,5
/// @return {String}
function fnc_dame_letra()
{
	randomize();
	var _random = irandom_range(1,100);
	if (_random <= 20) return "A";
	if ((_random > 20) && (_random <= 40))return "B";
	if ((_random > 40) && (_random <= 60)) return "C";
	if ((_random > 60) && (_random <= 95)) return "D";
	if (_random > 95) return "E";
}