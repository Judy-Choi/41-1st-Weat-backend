-- migrate:up
CREATE TABLE deliveries (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  from_name VARCHAR(100) NOT NULL,
  from_mobile VARCHAR(100) NOT NULL,
  from_email VARCHAR(500) NOT NULL,
  to_name VARCHAR(100) NOT NULL,
  to_mobile VARCHAR(100) NULl,
  to_address VARCHAR(200) NOT NULL,
  order_id INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (order_id) REFERENCES orders(id)
);


-- migrate:down
DROP TABLE deliveries;

