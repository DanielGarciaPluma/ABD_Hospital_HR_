CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_edad`(fecha_nac DATE) RETURNS int
    DETERMINISTIC
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, fecha_nac, CURDATE());
END