-- 1. Wyświetlenie całej tabeli orders_extended
-- Pokazuje surowe dane zamówień: klienci, produkty, ilości, ceny, kategorie, statusy
-- [Zrzut: 01_orders_extended.png]
SELECT *
FROM orders_extended;

-- 2. Oblicz łączną wartość zamówień (łączne przychody)
-- Mnoży sumę ceny jednostkowej przez sumę ilości
-- [Zrzut: 02_total_orders_sum.png]
SELECT SUM(unit_price) * SUM(quantity) AS total_amount_orders
FROM orders_extended;

-- 3. Średnia cena jednostkowa w podziale na kategorię
-- [Zrzut: 03_avg_price_by_category.png]
SELECT category, ROUND(AVG(unit_price), 2) AS avg_price
FROM orders_extended
GROUP BY category;

-- 4. Liczba zamówień złożonych przez każdego klienta
-- [Zrzut: 04_orders_per_customer.png]
SELECT customer_name, COUNT(order_id) AS quantity_orders
FROM orders_extended
GROUP BY customer_name;

-- 5. Największa ilość sztuk w jednym zamówieniu dla każdego produktu
-- [Zrzut: 05_top_product_quantity.png]
SELECT product_name, MAX(quantity) AS max_quantity
FROM orders_extended
GROUP BY product_name
ORDER BY max_quantity DESC;

-- 6. Liczba zamówień dla każdego statusu (delivered, returned, shipped)
-- [Zrzut: 06_orders_by_status.png]
SELECT COUNT(order_id) AS orders, status
FROM orders_extended
GROUP BY status;

-- 7. Liczba i suma wartości zamówień tylko dla statusu 'delivered'
-- [Zrzut: 07_delivered_value_summary.png]
SELECT COUNT(order_id) AS orders, SUM(unit_price) AS total_amount, status
FROM orders_extended
WHERE status = 'delivered'
GROUP BY status;

-- 8. Dostarczone zamówienia (status = 'delivered') tylko dla tych kategorii,
-- gdzie suma cen przekracza 1000
-- [Zrzut: 08_delivered_value_summary2.png]
SELECT COUNT(order_id) AS orders, category, SUM(unit_price) AS total_amount, status
FROM orders_extended
WHERE status = 'delivered'
GROUP BY category, status
HAVING SUM(unit_price) > 1000;

-- 9. Klient z największą liczbą zamówień (tylko pierwszy wynik)
-- [Zrzut: 09_delivered_value_summary3.png]
SELECT COUNT(order_id) AS orders, customer_name
FROM orders_extended
GROUP BY customer_name
LIMIT 1;
