CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fix_personas`()
BEGIN
    DECLARE v_rows INT DEFAULT 1;

    SET SQL_SAFE_UPDATES = 0;

    -- ================= RFC =================
    WHILE v_rows > 0 DO
        UPDATE tbb_personas
        SET rfc = CONCAT('RFC', LPAD(ID, 10, '0'))
        WHERE rfc IS NULL
        LIMIT 5000;

        SET v_rows = ROW_COUNT();
    END WHILE;

    -- ================= PAIS =================
    SET v_rows = 1;
    WHILE v_rows > 0 DO
        UPDATE tbb_personas
        SET pais_origen = 'MEXICO'
        WHERE pais_origen IS NULL
        LIMIT 5000;

        SET v_rows = ROW_COUNT();
    END WHILE;

END