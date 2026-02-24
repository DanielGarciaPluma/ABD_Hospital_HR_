CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_bandera`() RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	Declare v_bandera Boolean default false;
    declare v_pivote Int Default 0;
    set v_pivote = fn_numero_aleatorio_rangos (0,100);
    if v_pivote <= 50 then
		set v_bandera=true;
	else
		set v_bandera=false;
	end if;
RETURN v_bandera;
END