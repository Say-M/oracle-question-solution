-- ! 1 no answer
-- first create a view
CREATE VIEW order_view AS
  SELECT supplier.name, orders.id AS order_name 
  FROM orders
  INNER JOIN product ON orders.product_id = product.id
  INNER JOIN supplier ON product.supplier_id = supplier.id
  WHERE
    orders.id = 'ORD001'

-- then select from the view
SELECT * FROM order_view;

-- ! 2 no answer
BEGIN
  FOR product IN (
    SELECT *
    FROM product
    WHERE EXISTS(
      SELECT product_id
      FROM orders
      GROUP BY orders.product_id
      HAVING COUNT(product_id) >= 1
    )
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Product Name : ' || product.name || ', ID : ' || product.id || ', Amount : ' || product.amount);
  END LOOP;
END;

-- ! 3 no answer
BEGIN
  FOR customer IN (
    SELECT *
    FROM customer
    INNER JOIN orders ON customer.id = orders.customer_id
    WHERE product_id IN (
      SELECT product_id
     FROM customer
      INNER JOIN orders ON customer.id = orders.customer_id
      WHERE customer.last_name = 'Ahnaf'
    ) AND customer.last_name != 'Ahnaf'
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Customer ID : ' || customer.customer_id || ', Name : ' || customer.first_name || ' ' || customer.last_name || ', Address : ' || customer.address);
  END LOOP;
END;

-- ! 4 no answer
SELECT customer.id, customer.first_name, customer.last_name, SUM(product.amount) AS total_amount
FROM orders
INNER JOIN customer ON customer.id = orders.customer_id
INNER JOIN product on product.id = orders.product_id
WHERE
  EXTRACT(YEAR FROM orders.order_date) = 2023 AND
  EXTRACT(MONTH FROM orders.order_date) = 11
GROUP BY
  customer.id, customer.first_name, customer.last_name