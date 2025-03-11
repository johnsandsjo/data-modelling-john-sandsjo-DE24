SET search_path TO ezecream_05;

TRUNCATE TABLE orders;
-- TRUNCATE TABLE orders RESTART identity;

INSERT INTO orders (customer_id, order_date)
VALUES 
    (2, '2024-05-04'),
    --5 finns inte
    (5, '900-02-05');

-- DELETE FROM ezecream_05.orders
-- WHERE order_id = 4;

SELECT * FROM ezecream_05.orders;