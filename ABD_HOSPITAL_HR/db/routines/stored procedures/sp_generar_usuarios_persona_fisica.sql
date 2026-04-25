CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_generar_usuarios_persona_fisica`()
BEGIN
    DECLARE v_id_pf BIGINT;
    DECLARE v_nombre VARCHAR(100);
    DECLARE v_apellido VARCHAR(100);

    DECLARE v_base_nick VARCHAR(255);
    DECLARE v_nick_final VARCHAR(255);
    DECLARE v_pass_temp VARCHAR(255);

    DECLARE v_sufijo INT;
    DECLARE v_existe INT;

    DECLARE done INT DEFAULT 0;

    -- Cursor: recorre todas las personas físicas
    -- (si quieres solo las que NO tienen usuario, ya lo filtramos dentro)
    DECLARE cur CURSOR FOR
        SELECT pf.id, pf.nombre, pf.primer_apellido
        FROM persona_fisica pf;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_id_pf, v_nombre, v_apellido;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- 1) Evita duplicar: si ya existe usuario para esta persona, saltar
        SELECT COUNT(*)
          INTO v_existe
          FROM usuarios u
         WHERE u.persona_fisica_id = v_id_pf;

        IF v_existe > 0 THEN
            ITERATE read_loop;
        END IF;

        -- 2) Construir nickname base: primera letra del nombre + '.' + primer apellido
        --    - lower()
        --    - limpiar caracteres especiales
        SET v_base_nick = LOWER(
            limpiar_caracteres_especiales(
                CONCAT(LEFT(TRIM(v_nombre), 1), '.', TRIM(v_apellido))
            )
        );

        -- opcional: quitar espacios que pudieron quedar (por si apellido compuesto raro)
        SET v_base_nick = REPLACE(v_base_nick, ' ', '');

        -- 3) Garantizar único: si ya existe, agregar sufijo incremental
        SET v_nick_final = v_base_nick;
        SET v_sufijo = 1;

        nick_loop: LOOP
            SELECT COUNT(*)
              INTO v_existe
              FROM usuarios u
             WHERE u.nickname = v_nick_final;

            IF v_existe = 0 THEN
                LEAVE nick_loop;
            END IF;

            SET v_sufijo = v_sufijo + 1;
            SET v_nick_final = CONCAT(v_base_nick, v_sufijo);  -- m.ramirez2, m.ramirez3, ...
        END LOOP;

        -- 4) Password temporal en texto plano (ejemplo)
        --    Puedes cambiar el patrón al que uses en clase
        SET v_pass_temp = CONCAT('Temp#', v_id_pf);

        -- 5) Insertar usuario
        INSERT INTO usuarios (persona_fisica_id, nickname, password_plain, created_at)
        VALUES (v_id_pf, v_nick_final, v_pass_temp, NOW());

    END LOOP;

    CLOSE cur;
END