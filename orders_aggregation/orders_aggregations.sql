-- 1. Wyświetlenie całej tabeli orders_extended
-- Pokazuje surowe dane zamówień: klienci, produkty, ilości, ceny, kategorie, statusy
-- [Zrzut: orders_extended.png]
SELECT *
FROM orders_extended;

-- 2. Oblicz łączną wartość zamówień (suma ceny jednostkowej razy suma ilości)
SELECT SUM(unit_price) * SUM(quantity) AS total_amount_orders
FROM orders_extended;

-- 3. Oblicz średnią cenę jednostkową produktów w podziale na kategorie
SELECT category, ROUND(AVG(unit_price), 2) AS avg_price
FROM orders_extended
GROUP BY category;

-- 4. Policz liczbę zamówień dla każdego klienta
SELECT customer_name, COUNT(order_id) AS quantity_orders
FROM orders_extended
GROUP BY customer_name;

-- 5. Znajdź produkt z największą ilością w zamówieniu (dla każdego produktu)
SELECT product_name, MAX(quantity) AS max_quantity
FROM orders_extended
GROUP BY product_name
ORDER BY max_quantity DESC;

-- 6. Zlicz zamówienia według statusu (np. delivered, returned)
SELECT COUNT(order_id) AS orders, status
FROM orders_extended
GROUP BY status;

-- 7. Oblicz łączną wartość zamówień o statusie "delivered"
SELECT COUNT(order_id) AS orders, SUM(unit_price) AS total_amount, status
FROM orders_extended
WHERE status = 'delivered'
GROUP BY status;

-- 8. Dla zamówień o statusie "delivered" pokaż kategorie, w których suma cen przekracza 1000
SELECT COUNT(order_id) AS orders, category, SUM(unit_price) AS total_amount, status
FROM orders_extended
WHERE status = 'delivered'
GROUP BY category, status
HAVING SUM(unit_price) > 1000;

-- 9. Wyświetl klienta z największą liczbą zamówień (wersja uproszczona: tylko 1 wynik)
SELECT COUNT(order_id) AS orders, customer_name
FROM orders_extended
GROUP BY customer_name
LIMIT 1;
