SELECT *
FROM orders_extended;

SELECT SUM(unit_price) * SUM(quantity) AS total_amount_orders
FROM orders_extended;

SELECT category, ROUND(AVG(unit_price), 2) AS avg_price
FROM orders_extended
	GROUP BY category; 

SELECT customer_name, COUNT(order_id) AS quantity_orders
FROM orders_extended
	GROUP BY customer_name;

SELECT product_name, MAX(quantity) AS max_guantity
FROM orders_extended
GROUP BY product_name
ORDER BY max_guantity DESC;

SELECT COUNT(order_id) AS orders, status
FROM orders_extended
	GROUP BY status;

SELECT COUNT(order_id) AS orders, SUM(unit_price) AS total_amount, status
FROM orders_extended
	WHERE status = 'delivered'
	GROUP BY status; 

SELECT COUNT(order_id) AS orders, category, SUM(unit_price) AS total_amount, status
FROM orders_extended
	WHERE status = 'delivered'
	GROUP BY category, status
	HAVING SUM(unit_price) > 1000;

SELECT COUNT(order_id) AS orders, customer_name
FROM orders_extended
 GROUP BY customer_name
LIMIT 1;
