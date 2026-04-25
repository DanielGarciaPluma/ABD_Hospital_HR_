CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_fecha_nacimiento`() RETURNS int
    DETERMINISTIC
BEGIN
DECLARE min_dias INT;
DECLARE max_dias INT;
DECLARE dias_aleatorios INT;
DECLARE fecha_aleatoria DATE;

SET min_dias = DATEDIFF(fecha_inicio, '1900-01-01');
SET max_dias = DATEDIFF(fecha_inicio, '1900-01-01');
SET dias_aleatorios = fn_numero_aleatorio_rangos(min_dias,max_dias);
SET fecha_aleatoria = DATE_ADD('1900-01-01',INTERVAL dias_aleatorios DAY);

RETURN fecha_aleatoria;
END