-- 이름 변경  - 완료
/* =======================
   이름 변경
   규칙: 한글/영문만, 1~10자 (숫자·특수문자·공백 불가)
   ======================= */
DELIMITER //

DROP PROCEDURE IF EXISTS ChangeName //
CREATE PROCEDURE ChangeName(
  IN p_user_id BIGINT,
  IN p_new_name VARCHAR(10)
)
BEGIN
  DECLARE v_old_name VARCHAR(10);

  -- 1) 형식 검증
  IF p_new_name IS NULL OR NOT (p_new_name REGEXP '^[가-힣A-Za-z]{1,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이름은 한글/영문 1~10자, 공백·숫자·특수문자 불가';
  END IF;

  -- 2) 사용자 존재 + 동일값 방지
  SELECT `name` INTO v_old_name FROM `User` WHERE user_id = p_user_id;
  IF v_old_name IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='사용자를 찾을 수 없습니다.';
  END IF;
  IF v_old_name = p_new_name THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='기존 이름과 동일합니다.';
  END IF;

  -- 3) 업데이트
  UPDATE `User` SET `name` = p_new_name WHERE user_id = p_user_id;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이름 변경에 실패했습니다.';
  END IF;

  SELECT '이름이 변경되었습니다.' AS message;
END //

DELIMITER ;

call ChangeName(1,'수정된이름');

select * from user where user_id = 1;