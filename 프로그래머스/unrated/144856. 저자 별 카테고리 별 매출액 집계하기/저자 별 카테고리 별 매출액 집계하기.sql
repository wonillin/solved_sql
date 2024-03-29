-- 저자 ID ASC, CATEGORY DESC
SELECT a.author_id
      ,a.author_name
      ,category
      ,SUM(price * sales) total_sales
  FROM book b 
       INNER JOIN author a ON b.author_id = a.author_id
       INNER JOIN book_sales bs ON b.book_id = bs.book_id 
 WHERE sales_date BETWEEN '2022-01-01' AND '2022-01-31'
 GROUP BY author_id, author_name, category
 ORDER BY author_id, category DESC



