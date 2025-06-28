-- ========================
-- 1. EKPLORACJA DANYCH
-- ========================
SELECT * FROM clients;
SELECT * FROM orders;

--=========================
-- 2. ZAPYTANIA ANALITYCZNE
--=========================

-- ILOŚĆ KLIENTÓW Z PODZIAŁEM NA KRAJ
SELECT COUNT(*) AS quantity_from_country, country
FROM clients
GROUP BY country
ORDER BY country;

-- KLIENCI Z ANULOWANYMI LUB UJEMNYMI ZAMÓWIENIAMI
SELECT c.first_name || ' ' || c.last_name AS customer, o.order_date, o.status
FROM clients c 
INNER JOIN orders o USING(client_id)
WHERE o.amount <= 0 OR o.status = 'cancelled';

-- ŚREDNIA WARTOŚĆ ZAMÓWIEŃ NA KLIENTA
SELECT c.first_name || ' ' || c.last_name AS customer, ROUND(AVG(o.amount), 2) AS avg_amount
FROM clients c 
INNER JOIN orders o ON c.client_id = o.client_id 
GROUP BY customers;

-- KLIENCI, KTÓRZY ZŁOŻYLI WIĘCEJ NIŻ 1 ZAMÓWIENIE
SELECT c.first_name || ' ' || c.last_name AS customer, COUNT(o.client_id) AS quantitiy_orders
FROM clients c 
RIGHT JOIN orders o ON c.client_id = o.client_id
GROUP BY customers
HAVING COUNT(o.client_id) > 1;

-- ZAMÓWIENIA ZREALIZOWANE, POSORTOWANE MALEJĄCO PO KWOCIE
SELECT *
FROM orders
WHERE status = 'completed'
ORDER BY amount DESC;