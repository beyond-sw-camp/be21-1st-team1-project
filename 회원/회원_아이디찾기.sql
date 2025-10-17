-- 아이디 찾기 
-- 이름, 이메일, 비밀번호를 입력하면 아이디가 나옴

DELIMITER //

DROP PROCEDURE IF EXISTS FindLoginId //
CREATE PROCEDURE FindLoginId(
    IN p_name     VARCHAR(10),
    IN p_email    VARCHAR(30),
    IN p_password VARCHAR(255)   -- DB에 저장된 형식(해시/평문) 그대로 전달
)
BEGIN
    DECLARE v_login_id VARCHAR(15);

    -- 대소문자까지 모두 정확히 일치하도록 BINARY 비교 사용
    SELECT `id`
      INTO v_login_id
    FROM `User`
    WHERE BINARY `name`     = BINARY p_name
      AND BINARY `email`    = BINARY p_email
      AND BINARY `password` = BINARY p_password
    LIMIT 1;

    IF v_login_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '일치하는 아이디가 없습니다.';
    END IF;

    SELECT v_login_id AS login_id;
END //

DELIMITER ;

-- 아이디 찾기
call FindLoginId('김민지','user01@example.com','Pass123!');

-- 아이디 찾기 실패
call FindLoginId('김길동','user01@example.com','Pass123!');