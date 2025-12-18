DROP TABLE IF EXISTS sales_staging;

CREATE TABLE sales_staging (
    row_id INTEGER,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);

COPY sales_staging
FROM 'C:/temp/superstore.csv'
DELIMITER ','
CSV HEADER;
