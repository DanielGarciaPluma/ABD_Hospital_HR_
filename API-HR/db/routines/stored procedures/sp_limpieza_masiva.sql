CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_limpieza_masiva`()
BEGIN
    DECLARE v_rows INT DEFAULT 1;

    SET SQL_SAFE_UPDATES = 0;

    -- =========================
    -- PERSONAS
    -- =========================

    -- RFC por lotes
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas
        SET rfc = CONCAT(
            LEFT(MD5(ID), 4),
            LPAD(ID, 6, '0')
        )
        WHERE rfc IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- país por lotes
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas
        SET pais_origen = 'MEXICO'
        WHERE pais_origen IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- =========================
    -- PERSONAS FISICAS
    -- =========================

    -- titulo
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas_fisicas
        SET titulo_cortesia = ELT(
            FLOOR(1 + RAND()*3),
            'Sr.','Sra.','Dr.'
        )
        WHERE titulo_cortesia IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- segundo apellido
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas_fisicas
        SET segundo_apellido = CONCAT('SA_', ID)
        WHERE segundo_apellido IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- CURP unica
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas_fisicas
        SET curp = CONCAT(
            LEFT(MD5(ID), 10),
            LPAD(ID, 8, '0')
        )
        WHERE curp IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- grupo sanguineo
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas_fisicas
        SET grupo_sanguineo = ELT(
            FLOOR(1 + RAND()*8),
            'A+','A-','B+','B-','AB+','AB-','O+','O-'
        )
        WHERE grupo_sanguineo IS NULL
        LIMIT 10000;

        SET v_rows = ROW_COUNT();
    END WHILE;

END