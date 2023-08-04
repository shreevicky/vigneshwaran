USE SURCHARGE ;
CREATE TABLE orders (
  id INT NOT NULL AUTO_INCREMENT,
  order_id INT NOT NULL,
  sales DECIMAL(10,2) NOT NULL,
  profit DECIMAL(10,2) NOT NULL,
  ship_mode ENUM('Same Day', 'First Class', 'Standard Class') NOT NULL,
  shipping_cost DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE orders ADD CONSTRAINT shipping_cost_check CHECK (shipping_cost IN (0.2, 0.1, 0.5));