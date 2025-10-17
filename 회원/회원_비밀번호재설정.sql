-- 비밀번호 재설정 
-- 이름, 아이디, 이메일, 생년월일, 새로운 비밀번호를 입력으로 받음
-- 이름, 아이디, 이메일, 생년월일이 모두 일치하는 정보가 있다면 비밀번호 업데이트
DELIMITER //

DROP PROCEDURE IF EXISTS ResetPassword //
CREATE PROCEDURE ResetPassword(
  IN p_name         VARCHAR(10),
  IN p_login_id     VARCHAR(15),   -- User.id
  IN p_email        VARCHAR(30),
  IN p_birth6       CHAR(6),       -- "YYMMDD" (예: 010101)
  IN p_new_password VARCHAR(255)   -- 해시/평문: DB 저장 형태에 맞게
)
BEGIN
  DECLARE v_user_id BIGINT;
  DECLARE v_birth   DATE;

  -- (선택) 새 비밀번호 형식 검사: 8~15, 영문/숫자/특수 각각 1+ 포함
  IF NOT (CHAR_LENGTH(p_new_password) BETWEEN 8 AND 15) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호는 8~15자여야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '^[A-Za-z0-9!@#$%^&*()_+=-]{8,15}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 허용되지 않은 문자가 있습니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[A-Za-z]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 영문이 1자 이상 포함되어야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[0-9]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 숫자가 1자 이상 포함되어야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[!@#$%^&*()_+=-]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 특수문자(!@#$%^&*()_+=-) 1자 이상 포함되어야 합니다.'; 
  END IF;

  -- YYMMDD -> DATE (00~24는 20xx, 그 외는 19xx)
  SET v_birth = STR_TO_DATE(p_birth6, '%y%m%d');
  IF CAST(SUBSTR(p_birth6,1,2) AS UNSIGNED) <= 24 THEN
    SET v_birth = DATE_ADD(v_birth, INTERVAL 100 YEAR);
  END IF;

  -- 정확 일치(대소문자 구분 위해 BINARY 사용)
  SELECT user_id
    INTO v_user_id
  FROM `User`
  WHERE BINARY `name`  = BINARY p_name
    AND BINARY `id`    = BINARY p_login_id
    AND BINARY `email` = BINARY p_email
    AND `birthdate`    = v_birth
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='일치하는 정보가 없습니다.';
  END IF;

  UPDATE `User`
  SET `password` = p_new_password
  WHERE `user_id` = v_user_id;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호 변경에 실패했습니다.';
  END IF;

  -- 성공 메시지(원치 않으면 이 SELECT는 지워도 됨)
  SELECT '비밀번호가 변경되었습니다.' AS message, v_user_id AS user_id;
END //

DELIMITER ;

select * from user where id = 'tcuser01';

-- 비밀번호 재설정 성공
call ResetPassword('김길동','tcuser01','tcuser01@example.com','010101','Abcdef00!');

-- 비밀번호 재설정 실패(형식오류)
call ResetPassword('김길동','tcuser01','tcuser01@example.com','010101','Abcd09!');

-- 비밀번호 재설정 실패(일치정보 X)
call ResetPassword('김길동','tuser01','tcuser01@example.com','010101','Abcdrr09!');