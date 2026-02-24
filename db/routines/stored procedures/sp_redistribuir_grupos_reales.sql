CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_redistribuir_grupos_reales`()
BEGIN
    UPDATE tbb_personas_fisicas
    SET grupo_sanguineo = CASE 
        -- Generamos un número aleatorio del 0.00 al 99.99
        WHEN RAND()*100 < 39 THEN 'O+'    -- ~39%
        WHEN RAND()*100 < 66 THEN 'A+'    -- ~27% (39+27=66)
        WHEN RAND()*100 < 75 THEN 'B+'    -- ~9%
        WHEN RAND()*100 < 84 THEN 'O-'    -- ~9%
        WHEN RAND()*100 < 90 THEN 'A-'    -- ~6%
        WHEN RAND()*100 < 95 THEN 'AB+'   -- ~5%
        WHEN RAND()*100 < 98 THEN 'B-'    -- ~3%
        ELSE 'AB-'                        -- ~2% el resto
    END;
END