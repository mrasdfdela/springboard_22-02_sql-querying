-- Comments in SQL Start with dash-dash --
-- 1
INSERT INTO products (name, price, can_be_returned) values ('chair', 44.00, false);
-- 2
INSERT INTO products (name, price, can_be_returned) values ('stool', 25.99, true);
-- 3
INSERT INTO products (name, price, can_be_returned) values ('table', 124.00, false);
-- 4
SELECT * FROM products;
-- 5
SELECT name FROM products;
-- 6
SELECT name, price FROM products;
-- 7
INSERT INTO products (name, price, can_be_returned) values ('lamp', 35.99, true);
-- 8
SELECT * FROM products where can_be_returned;
-- 9
SELECT * FROM products where price < 44;
-- 10
SELECT * FROM products where price between 22.5 and 99.99;
-- 11
UPDATE products set price = price - 20;
-- 12
DELETE FROM products where price < 25;
-- 13
UPDATE products set price = price + 20;
-- 14
UPDATE products set can_be_returned = true;
