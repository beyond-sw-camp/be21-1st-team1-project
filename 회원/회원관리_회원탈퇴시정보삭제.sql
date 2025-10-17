-- 회원 탈퇴 시 정보 삭제

set @delete_id = 7;

DELETE FROM user
WHERE user_id = @delete_id;
