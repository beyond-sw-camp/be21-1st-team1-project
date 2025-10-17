-- 이메일 인증 프로시저
DELIMITER //

DROP PROCEDURE IF EXISTS VerifyEmailCode //
CREATE PROCEDURE VerifyEmailCode(
  IN p_user_id BIGINT,
  IN p_code    CHAR(6)
)
BEGIN
  UPDATE Email_Verification
  SET verified = 1
  WHERE user_id = p_user_id
    AND code    COLLATE utf8mb4_general_ci = p_code COLLATE utf8mb4_general_ci
    AND verified = 0
  ORDER BY created_at DESC
  LIMIT 1;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='코드 불일치 또는 이미 인증됨';
  END IF;

  SELECT '이메일 인증 완료' AS message;
END //

DELIMITER ;

call VerifyEmailCode(23,376141);
call VerifyEmailCode(24,70000);