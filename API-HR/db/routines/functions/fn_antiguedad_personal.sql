CREATE DEFINER=`root`@`localhost` FUNCTION `fn_antiguedad_personal`(p_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE v_fecha DATE;

  SELECT fecha_ingreso
  INTO v_fecha
  FROM tbb_personal
  WHERE ID = p_id;

  RETURN TIMESTAMPDIFF(YEAR, v_fecha, CURDATE());
END