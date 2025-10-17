# 1. 장소 데이터 수정
# 관리자가 아래와 같은 변수로 데이터 수정을 할 때
SET @name = '수정된 이름';
SET @category_id = 2;
SET @big_location = '수정된 big 주소';
SET @small_location = '수정된 small 주소';
SET @concept_id = 3;
SET @place_id = 1;

UPDATE Place a
   SET name = @name,
       category_id = @category_id,
       big_location = @big_location,
       small_location = @small_location,
       concept_id = @concept_id,
       name = @name
 WHERE place_id = @place_id;

SELECT * FROM place;