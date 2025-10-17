-- 친구 목록 조회 
-- 자신의 아이디(로그인 아이디)를 입력하면 친구목록이 조회됨

DELIMITER //

DROP PROCEDURE IF EXISTS FriendList //
CREATE PROCEDURE FriendList(
  IN p_login_id VARCHAR(15)
)
BEGIN
  DECLARE v_user_id BIGINT;

  -- 1) 로그인ID로 내 user_id 찾기 (collation 강제)
  SELECT u.user_id
    INTO v_user_id
  FROM `User` u
  WHERE u.`id` COLLATE utf8mb4_general_ci = p_login_id COLLATE utf8mb4_general_ci
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='존재하지 않는 사용자입니다.';
  END IF;

  -- 2) 친구(승인) 목록의 상대 user_id2 → 상대의 로그인ID 반환
  SELECT
      u2.`id`       AS friend_login_id,
      u2.`nickname` AS friend_nickname,
      u2.`user_id`  AS friend_user_id
  FROM `Friend` f
  JOIN `User`  u2 ON u2.`user_id` = f.`user_id2`
  WHERE f.`user_id`  = v_user_id
    AND f.`status_id` = 2       -- 승인 상태값. 네 환경에서 승인=2면 여기 2로 바꿔!
  ORDER BY u2.`id`;
END //

DELIMITER ;

-- 친구 목록 조회
call FriendList('user01');

-- 존재하지 않는 유저 검색시 오류
call FriendList('user011');

