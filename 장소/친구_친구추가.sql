# 5. 친구 추가
# friend 테이블에서 상태식별번호가 1일 경우 2로 변경 

SET @friend_id = 8;
SET @user_id = 4;

UPDATE friend
   SET status_id = 2
 WHERE user_id = @user_id
   AND user_id2 = @friend_id;

SELECT * FROM friend WHERE user_id = 4;