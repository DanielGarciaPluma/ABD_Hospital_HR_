CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_contratar_personal`(
  IN p_persona_id INT,
  IN p_departamento_id INT,
  IN p_numero_empleado VARCHAR(20),
  IN p_puesto VARCHAR(80),
  IN p_tipo_contrato VARCHAR(20),
  IN p_fecha_ingreso DATE,
  IN p_salario DECIMAL(10,2)
)
BEGIN

  INSERT INTO tbb_personal
  (persona_id, departamento_id, numero_empleado,
   puesto, tipo_contrato, fecha_ingreso, salario)
  VALUES
  (p_persona_id, p_departamento_id, p_numero_empleado,
   p_puesto, p_tipo_contrato, p_fecha_ingreso, p_salario);

END