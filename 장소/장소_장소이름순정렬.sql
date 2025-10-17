-- 4. 장소 이름순 정렬
SELECT p.name AS '장소',
       p.big_location AS '위치(시)',
       p.small_location AS '위치(읍/면/동)',
       p.description AS '설명',
       c.category AS '카테고리',
       IFNULL(SUM(n.count),0) AS '조회수'
  FROM Place p
  JOIN Place_category c ON p.category_id = c.category_id
  LEFT JOIN Referenced_Num n ON p.place_id = n.place_id
 GROUP BY p.place_id, p.name, c.category_id
 ORDER BY p.name ASC;