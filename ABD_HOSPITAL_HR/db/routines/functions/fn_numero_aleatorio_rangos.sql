CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int , v_limite_superior int) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE v_numero_generado INT
	DEFAULT FLOOR(Rand()* (v_liminte_superior-v_limite_inferior+1)+v_limite_inferior);
	SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END