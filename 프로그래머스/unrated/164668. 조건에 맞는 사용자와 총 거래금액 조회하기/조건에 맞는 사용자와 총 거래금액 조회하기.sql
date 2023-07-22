-- 코드를 입력하세요
SELECT user_id  
      ,nickname
      ,SUM(price) total_sales
  FROM used_goods_user ugu
       LEFT JOIN used_goods_board ugb ON ugu.user_id = ugb.writer_id
 WHERE status = 'DONE'
 GROUP BY user_id
 HAVING total_sales >= 700000
 ORDER BY total_sales