-- 코드를 입력하세요
SELECT category
      ,SUM(sales) total_sales
  FROM book b
       INNER JOIN book_sales bs ON b.book_id = bs.book_id
 WHERE sales_date BETWEEN '2022-01-01 00:00:00' AND '2022-01-31 23:59:59'
 GROUP BY category
 ORDER BY category