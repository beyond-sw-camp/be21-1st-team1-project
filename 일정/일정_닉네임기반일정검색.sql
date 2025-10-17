# 2. 닉네임 기반 일정 검색
# 닉네임 받아오기 
# user랑 schedule 조인
# 닉네임으로 검색 (스키마장인)
SELECT a.title
	 , a. start_date
	 , a.end_date
	 , c.concept
	 , b.nickname
  FROM schedule a
  JOIN user b ON a.user_id = b.user_id
  JOIN concept c ON a.concept_id = c.concept_id 
 WHERE a.status = 1
   AND b.nickname = '스키마장인';
 
 SELECT nickname, user_id FROM user WHERE user_id = 17;
