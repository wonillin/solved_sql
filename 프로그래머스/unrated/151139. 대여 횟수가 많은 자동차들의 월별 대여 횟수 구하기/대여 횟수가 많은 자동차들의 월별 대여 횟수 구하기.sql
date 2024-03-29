WITH cte AS
(SELECT car_id
       ,COUNT(DISTINCT MONTH(start_date)) cnt
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
 GROUP BY car_id
 HAVING cnt >= 3
),cnt_5 AS
(SELECT car_id
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
 GROUP BY car_id
 HAVING COUNT(*) >= 5
)


SELECT MONTH(start_date) month
      ,car_id
      ,COUNT(*) records
  FROM car_rental_company_rental_history
 WHERE car_id IN (SELECT car_id
                    FROM cnt_5)
   AND start_date BETWEEN '2022-08-01' AND '2022-10-31'
 GROUP BY month, car_id
 ORDER BY month, car_id DESC