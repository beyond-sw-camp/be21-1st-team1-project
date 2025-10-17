# 6. 장소 데이터 카테고리별 출력
SELECT *
  FROM place a
  LEFT JOIN place_category b ON a.category_id = b.category_id
 ORDER BY a.category_id;
