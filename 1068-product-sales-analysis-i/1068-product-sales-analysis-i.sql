# Write your MySQL query statement below
-- Write your PostgreSQL query statement below
SELECT p.product_name AS Product_name, s.year AS year, s.price AS price
FROM Sales s 
JOIN Product p
ON 
s.product_id = p.product_id 
