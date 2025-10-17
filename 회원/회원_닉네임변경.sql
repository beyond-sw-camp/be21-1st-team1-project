-- 
/* =======================
   닉네임 변경 -- 완료
   규칙: 한글만 2~10자, 중복 불가
   ======================= */
DELIMITER //

DROP PROCEDURE IF EXISTS ChangeNickname //
CREATE PROCEDURE ChangeNickname(
  IN p_user_id BIGINT,
  IN p_new_nickname VARCHAR(15)
)
BEGIN
  DECLARE v_old_nickname VARCHAR(15);

  -- 1) 형식 검증
  IF p_new_nickname IS NULL OR NOT (p_new_nickname REGEXP '^[가-힣]{2,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='닉네임은 한글 2~10자여야 합니다.';
  END IF;

  -- 2) 사용자 존재 + 동일값 방지
  SELECT `nickname` INTO v_old_nickname FROM `User` WHERE user_id = p_user_id COLLATE utf8mb4_general_ci;
  IF v_old_nickname IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='사용자를 찾을 수 없습니다.';
  END IF;
  IF v_old_nickname = p_new_nickname THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='기존 닉네임과 동일합니다.';
  END IF;

  -- 3) 중복 검사 (본인 제외)
  IF EXISTS (
      SELECT 1 FROM `User`
      WHERE `nickname` = p_new_nickname COLLATE utf8mb4_general_ci
        AND user_id <> p_user_id COLLATE utf8mb4_general_ci
     ) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이미 사용 중인 닉네임입니다.';
  END IF;

  -- 4) 업데이트
  UPDATE `User` SET `nickname` = p_new_nickname COLLATE utf8mb4_general_ci WHERE user_id = p_user_id COLLATE utf8mb4_general_ci;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='닉네임 변경에 실패했습니다.';
  END IF;

  SELECT '닉네임이 변경되었습니다.' AS message;
END //

DELIMITER ;

call ChangeNickname(23,'길동이');

select nickname from user where user_id = 23