-- 로그인
DELIMITER //

DROP PROCEDURE IF EXISTS Login //
CREATE PROCEDURE Login(
  IN p_login_id  VARCHAR(15),
  IN p_password  VARCHAR(255)
)
BEGIN
  DECLARE v_user_id BIGINT;

  -- 1) 아이디/비밀번호 일치 검사
  SELECT u.user_id
    INTO v_user_id
  FROM `User` u
  WHERE u.`id` COLLATE utf8mb4_general_ci = p_login_id COLLATE utf8mb4_general_ci
    AND BINARY u.`password` = BINARY p_password     -- 비번은 대소문자까지 일치
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='아이디/비밀번호 불일치';
  END IF;

  -- 2) 이메일 인증 필수
  IF NOT EXISTS (
      SELECT 1
      FROM Email_Verification ev
      WHERE ev.user_id = v_user_id
        AND ev.verified = 1
  ) THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = '이메일 미인증: 인증 후 로그인 가능합니다.';
  END IF;

  -- 3) 성공
 SELECT CONCAT(u.nickname, '님, 로그인이 완료되었습니다.') AS message
FROM `User` u
WHERE u.user_id =v_user_id;   -- 또는 v_user_id (네 프로시저 변수명에 맞춰서)


END //

DELIMITER ;

SELECT u.user_id,
       u.id AS login_id,
       CASE WHEN EXISTS (
              SELECT 1
              FROM Email_Verification ev
              WHERE ev.user_id = u.user_id
                AND ev.verified = 1
            )
            THEN 'VERIFIED'
            ELSE 'NOT_VERIFIED'
       END AS verify_state
FROM `User` u
ORDER BY u.user_id;

INSERT INTO Email_Verification (user_id, email, code, verified, created_at)
SELECT u.user_id, u.email,
       LPAD(FLOOR(RAND()*1000000), 6, '0') AS code,
       1 AS verified,
       NOW()
FROM `User` u
LEFT JOIN Email_Verification ev
       ON ev.user_id = u.user_id AND ev.verified = 1
WHERE ev.user_id IS NULL;

-- 로그인 성공
call login('tcuser01', 'Abcd12!@');

-- 로그인 실패(불일)
call login('tcuser01', 'Abcd1!@');

-- 로그인 권한 없음
call login('TcUser','Abcd12!@');