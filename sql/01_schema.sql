DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    region TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);
