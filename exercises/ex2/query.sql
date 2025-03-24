--d) Write SQL code to get the total price for Ragnar Lodbrok. 
--Insert data into your tables and test it out.

SELECT customer_name, SUM(od.receipt_price)
FROM ezecream_ex2.customer as c
LEFT JOIN ezecream_ex2.order as o
ON c.customer_id = o.customer_id
LEFT JOIN ezecream_ex2.order_detail od
ON o.order_id = od.order_id
WHERE customer_name = 'Ragnar Lodbrok'
GROUP BY customer_name;