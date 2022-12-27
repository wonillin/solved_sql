-- 코드를 입력하세요
SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') sales_date
      ,product_id
      ,user_id
      ,sales_amount
  FROM online_sale
 WHERE sales_date BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'

UNION

SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') sales_date
      ,product_id
      ,NULL AS user_id
      ,sales_amount
  FROM offline_sale
 WHERE sales_date BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
 ORDER BY sales_date, product_id, user_id