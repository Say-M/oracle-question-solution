CREATE TABLE customer (
  id INT PRIMARY KEY,
  phone VARCHAR(11) CHECK(LENGTHB(phone) = 11),
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  address VARCHAR(255) NOT NULL,
  rating INT CHECK(rating >= 1 AND rating <= 5)
)

CREATE TABLE supplier (
  id INT PRIMARY KEY,
  phone VARCHAR(11) CHECK(LENGTHB(phone) = 11),
  name VARCHAR(30) NOT NULL,
  address VARCHAR(255) NOT NULL,
  rating INT CHECK(rating >= 1 AND rating <= 5)
)

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    amount INT NOT NULL CHECK(amount > 0),
    supplier_id INT REFERENCES supplier(id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE orders (
  id VARCHAR(14) PRIMARY KEY,
  order_date DATE NOT NULL,
  customer_id INT NOT NULL REFERENCES customer(id) ON DELETE SET NULL,
  product_id INT NOT NULL REFERENCES product(id) ON DELETE SET NULL
)