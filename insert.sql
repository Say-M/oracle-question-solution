-- ! customers insertion
INSERT INTO customer (id, phone, first_name, last_name, address, rating)
VALUES (1, '01711223344', 'Farhan', 'Ahnaf', '456 Birch St', 4);
INSERT INTO customer (id, phone, first_name, last_name, address, rating)
VALUES (2, '01899887766', 'Fatima', 'Islam', '456 Chittagong Lane', 4);
INSERT INTO customer (id, phone, first_name, last_name, address, rating)
VALUES (3, '01666554433', 'Ahmed', 'Hossain', '789 Sylhet Street', 3);
INSERT INTO customer (id, phone, first_name, last_name, address, rating)
VALUES (4, '01977665588', 'Ayesha', 'Khan', '101 Rajshahi Avenue', 2);
INSERT INTO customer (id, phone, first_name, last_name, address, rating)
VALUES (5, '01555443322', 'Tahira', 'Akhtar', '234 Khulna Lane', 5);

-- ! suppliers insertion
INSERT INTO supplier (id, phone, name, address, rating)
VALUES (1, '01887654321', 'Tech Solutions Ltd.', '123 IT Park, Dhaka', 4);
INSERT INTO supplier (id, phone, name, address, rating)
VALUES (2, '01776543210', 'Bangla Hardware', '456 Electronics Bazaar, Chittagong', 3);
INSERT INTO supplier (id, phone, name, address, rating)
VALUES (3, '01965432109', 'Green Agro Farms', '789 Agriculture Road, Sylhet', 5);
INSERT INTO supplier (id, phone, name, address, rating)
VALUES (4, '01654321098', 'Creative Textiles', '101 Fabric Street, Rajshahi', 2);
INSERT INTO supplier (id, phone, name, address, rating)
VALUES (5, '01543210987', 'Furniture World', '202 Wood Market, Khulna', 1);

-- ! products insertion
INSERT INTO product (id, name, amount, supplier_id) VALUES (1, 'Lipstick', 10, 1);
INSERT INTO product (id, name, amount, supplier_id) VALUES (2, 'Foundation', 15, 2);
INSERT INTO product (id, name, amount, supplier_id) VALUES (3, 'Mascara', 20, 3);
INSERT INTO product (id, name, amount, supplier_id) VALUES (4, 'Eyeshadow Palette', 8, 4);
INSERT INTO product (id, name, amount, supplier_id) VALUES (5, 'Blush', 12, 5);

-- ! orders insertion
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD002', TO_DATE('2023-02-05', 'YYYY-MM-DD'), 2, 2);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD003', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 3);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD004', TO_DATE('2023-04-15', 'YYYY-MM-DD'), 4, 4);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD005', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 5, 5);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD006', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 1, 2);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD007', TO_DATE('2023-07-30', 'YYYY-MM-DD'), 2, 3);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD008', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 3, 4);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD009', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 4, 5);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD010', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 5, 1);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD011', TO_DATE('2023-11-05', 'YYYY-MM-DD'), 1, 2);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD012', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 2, 3);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD013', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 3, 4);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD014', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 4, 5);
INSERT INTO orders (id, order_date, customer_id, product_id) VALUES ('ORD015', TO_DATE('2023-11-25', 'YYYY-MM-DD'), 5, 1);
