CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_bandera_porcentaje`(v_porcentaje int) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

RETURN rand() < (v_porcentaje/100);
END