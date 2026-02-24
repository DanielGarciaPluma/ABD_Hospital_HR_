CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_poblar_completo`(
    IN vcantidad INT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE v_persona_id INT;
    DECLARE v_edad INT;
    DECLARE v_genero ENUM('H','M','N/B');
    DECLARE v_status_medico VARCHAR(100);
    DECLARE v_status_vida VARCHAR(20);

    WHILE i < vcantidad DO

        -- =========================
        -- 1. EDAD (SIEMPRE MAYOR DE EDAD)
        -- =========================
        SET v_edad = FLOOR(18 + RAND() * 60);

        -- =========================
        -- 2. GENERO RANDOM
        -- =========================
        SET v_genero = ELT(FLOOR(1 + RAND()*3),'H','M','N/B');

        -- =========================
        -- 3. STATUS MEDICO RANDOM
        -- =========================
        SET v_status_medico = ELT(
            FLOOR(1 + RAND()*3),
            'Estable',
            'Observacion',
            'Tratamiento'
        );

        -- =========================
        -- 4. STATUS VIDA RANDOM
        -- =========================
        SET v_status_vida = ELT(
            FLOOR(1 + RAND()*5),
            'Vivo',
            'Finado',
            'Coma',
            'Vegetativo',
            'Desconocido'
        );

        -- =========================
        -- 5. INSERTAR PERSONA
        -- =========================
        INSERT INTO tbb_personas (
            tipo,
            fecha_registro,
            estatus
        )
        VALUES (
            'Fisica',
            NOW(),
            b'1'
        );

        SET v_persona_id = LAST_INSERT_ID();

        -- =========================
        -- 6. INSERTAR PERSONA FISICA
        -- =========================
        INSERT INTO tbb_personas_fisicas (
            ID,
            titulo_cortesia,
            nombre,
            primer_apellido,
            segundo_apellido,
            genero,
            fecha_nacimiento,
            grupo_sanguineo,
            fecha_registro,
            estatus
        )
        VALUES (
            v_persona_id,
            'Sr.',
            CONCAT('Nombre', i),
            CONCAT('Apellido', i),
            CONCAT('Seg', i),
            v_genero,
            DATE_SUB(CURDATE(), INTERVAL v_edad YEAR),
            ELT(FLOOR(1 + RAND()*8),'A+','A-','B+','B-','AB+','AB-','O+','O-'),
            NOW(),
            b'1'
        );

        -- =========================
        -- 7. INSERTAR PACIENTE
        -- =========================
        INSERT INTO tbb_pacientes (
            status_medico,
            status_vida,
            fecha_ultima_citamedica,
            fecha_registro,
            estatus,
            persona_id
        )
        VALUES (
            v_status_medico,
            v_status_vida,
            NOW(),
            NOW(),
            b'1',
            v_persona_id
        );

        SET i = i + 1;

    END WHILE;

    SELECT CONCAT('Insertados: ', vcantidad) AS resultado;

END