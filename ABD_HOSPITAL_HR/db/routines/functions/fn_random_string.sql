CREATE DEFINER=`root`@`localhost` FUNCTION `fn_random_string`(len INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE chars VARCHAR(62) DEFAULT 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  DECLARE result VARCHAR(255) DEFAULT '';
  DECLARE i INT DEFAULT 0;

  WHILE i < len DO
    SET result = CONCAT(result, SUBSTRING(chars, FLOOR(1 + RAND()*52), 1));
    SET i = i + 1;
  END WHILE;

  RETURN result;
END