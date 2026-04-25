CREATE DEFINER=`root`@`localhost` FUNCTION `tipo_sangre_aleatorio`() RETURNS varchar(3) CHARSET utf8mb4
    NO SQL
BEGIN

    DECLARE v_tipo VARCHAR(2);
    DECLARE v_rh CHAR(1);

    -- RH
    SET v_rh = IF(bandera_probabilidad(85), '+', '-');

    -- ABO con probabilidades condicionadas

    IF bandera_probabilidad(45) THEN
        SET v_tipo = 'O';

    ELSEIF bandera_probabilidad(64) THEN
        SET v_tipo = 'A';

    ELSEIF bandera_probabilidad(43) THEN
        SET v_tipo = 'B';

    ELSE
        SET v_tipo = 'AB';
    END IF;

    RETURN CONCAT(v_tipo, v_rh);

END