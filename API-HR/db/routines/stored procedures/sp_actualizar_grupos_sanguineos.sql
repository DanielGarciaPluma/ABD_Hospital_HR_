CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_grupos_sanguineos`()
BEGIN
    UPDATE tbb_personas_fisicas
    SET grupo_sanguineo = CASE 
        -- Casos para A Positivo
        WHEN grupo_sanguineo LIKE '%A%POS%' OR grupo_sanguineo = 'A+' THEN 'A+'
        -- Casos para A Negativo
        WHEN grupo_sanguineo LIKE '%A%NEG%' OR grupo_sanguineo = 'A-' THEN 'A-'
        -- Casos para B Positivo
        WHEN grupo_sanguineo LIKE '%B%POS%' OR grupo_sanguineo = 'B+' THEN 'B+'
        -- Casos para B Negativo
        WHEN grupo_sanguineo LIKE '%B%NEG%' OR grupo_sanguineo = 'B-' THEN 'B-'
        -- Casos para AB Positivo
        WHEN grupo_sanguineo LIKE '%AB%POS%' OR grupo_sanguineo = 'AB+' THEN 'AB+'
        -- Casos para AB Negativo
        WHEN grupo_sanguineo LIKE '%AB%NEG%' OR grupo_sanguineo = 'AB-' THEN 'AB-'
        -- Casos para O Positivo (frecuente error con la letra O y el cero 0)
        WHEN grupo_sanguineo LIKE '%O%POS%' OR grupo_sanguineo LIKE '%0%POS%' OR grupo_sanguineo IN ('O+', '0+') THEN 'O+'
        -- Casos para O Negativo
        WHEN grupo_sanguineo LIKE '%O%NEG%' OR grupo_sanguineo LIKE '%0%NEG%' OR grupo_sanguineo IN ('O-', '0-') THEN 'O-'
        
        -- Si no coincide con nada, mantiene el valor original para no perder datos
        ELSE grupo_sanguineo 
    END;
END