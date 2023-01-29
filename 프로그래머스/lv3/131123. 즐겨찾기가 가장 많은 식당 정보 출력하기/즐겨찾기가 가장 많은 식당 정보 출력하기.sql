-- 코드를 입력하세요
SELECT food_type
      ,rest_id
      ,rest_name
      ,favorites
  FROM rest_info
 WHERE rest_name IN (SELECT rest_name
                       FROM (SELECT rest_name
                                   ,RANK() OVER(PARTITION BY food_type ORDER BY favorites DESC) rn
                               FROM rest_info) a
                      WHERE rn =1 )
 ORDER BY food_type DESC
 
