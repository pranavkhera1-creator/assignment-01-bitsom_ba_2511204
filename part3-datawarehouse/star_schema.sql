-- Create Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    month VARCHAR(20),
    year INT
);

-- Create Store Dimension
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(100)
);

-- Create Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100)
);

-- Create Fact Table
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- Insert into dim_date
INSERT INTO dim_date VALUES
(1,'2023-01-01','January',2023),
(2,'2023-01-05','January',2023),
(3,'2023-02-10','February',2023),
(4,'2023-02-15','February',2023),
(5,'2023-03-01','March',2023);

-- Insert into dim_store
INSERT INTO dim_store VALUES
(1,'Reliance Retail','Mumbai'),
(2,'Big Bazaar','Delhi'),
(3,'DMart','Bangalore');

-- Insert into dim_product
INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'T-Shirt','Clothing'),
(3,'Rice Bag','Groceries'),
(4,'Smartphone','Electronics');

-- Insert into fact_sales
INSERT INTO fact_sales VALUES
(1,1,1,1,2,120000),
(2,1,2,2,5,5000),
(3,2,1,3,10,7000),
(4,2,3,4,1,40000),
(5,3,2,1,1,60000),
(6,3,3,3,8,5600),
(7,4,1,2,3,3000),
(8,4,2,4,2,80000),
(9,5,3,1,1,60000),
(10,5,1,3,6,4200);
