-- products.sql : product info table for import into SQLite
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL,
    rating REAL
);

INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P001', 'Product 1', 'Toys', 16.27, 4.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P002', 'Product 2', 'Apparel', 400.36, 3.0);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P003', 'Product 3', 'Apparel', 150.9, 5.0);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P004', 'Product 4', 'Home & Kitchen', 193.03, 4.5);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P005', 'Product 5', 'Toys', 228.93, 4.7);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P006', 'Product 6', 'Home & Kitchen', 354.83, 2.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P007', 'Product 7', 'Books', 154.24, 3.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P008', 'Product 8', 'Beauty', 463.82, 2.8);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P009', 'Product 9', 'Beauty', 304.56, 3.3);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P010', 'Product 10', 'Toys', 445.76, 4.4);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P011', 'Product 11', 'Electronics', 191.14, 2.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P012', 'Product 12', 'Books', 15.62, 4.1);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P013', 'Product 13', 'Apparel', 208.99, 3.3);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P014', 'Product 14', 'Beauty', 492.89, 3.7);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P015', 'Product 15', 'Apparel', 377.41, 2.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P016', 'Product 16', 'Books', 16.58, 3.5);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P017', 'Product 17', 'Beauty', 336.17, 3.8);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P018', 'Product 18', 'Toys', 446.32, 3.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P019', 'Product 19', 'Sports', 162.38, 4.8);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P020', 'Product 20', 'Home & Kitchen', 209.32, 3.2);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P021', 'Product 21', 'Beauty', 57.84, 4.5);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P022', 'Product 22', 'Toys', 414.28, 2.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P023', 'Product 23', 'Toys', 185.73, 4.4);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P024', 'Product 24', 'Beauty', 473.72, 3.4);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P025', 'Product 25', 'Books', 437.3, 3.5);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P026', 'Product 26', 'Electronics', 97.94, 2.5);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P027', 'Product 27', 'Toys', 171.78, 3.4);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P028', 'Product 28', 'Sports', 473.1, 3.0);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P029', 'Product 29', 'Home & Kitchen', 197.28, 2.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P030', 'Product 30', 'Sports', 384.12, 4.8);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P031', 'Product 31', 'Books', 126.52, 3.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P032', 'Product 32', 'Books', 69.83, 3.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P033', 'Product 33', 'Home & Kitchen', 75.33, 3.8);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P034', 'Product 34', 'Sports', 369.95, 3.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P035', 'Product 35', 'Sports', 130.15, 3.4);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P036', 'Product 36', 'Electronics', 322.89, 4.0);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P037', 'Product 37', 'Apparel', 77.01, 4.6);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P038', 'Product 38', 'Sports', 242.83, 2.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P039', 'Product 39', 'Books', 70.18, 4.9);
INSERT INTO products (product_id, product_name, category, price, rating) VALUES ('P040', 'Product 40', 'Home & Kitchen', 147.94, 4.8);
