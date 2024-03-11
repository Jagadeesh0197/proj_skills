CREATE TABLE Product (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  sku INT NOT NULL DEFAULT 0, -- stock_unit attribute
  
  category_id INT NOT NULL,
  invertory_id INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  discount_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  
);

CREATE TABLE Product_Category (
  INSERT INTO Product_Category(product_id)
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  
);

CREATE TABLE Product_inventory (
  INSERT INTO Product_inventory(product_id)
  quantity INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  
);


CREATE TABLE discount (
  INSERT INTO discount(product_id)
  name VARCHAR(255) NOT NULL,
  description TEXT,
  discount_percent DECIMAL(10, 2) NOT NULL,
  active TINYINT(1) NOT NULL
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  
);