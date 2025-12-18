INSERT INTO sales (
    order_id,
    order_date,
    ship_date,
    customer_id,
    customer_name,
    segment,
    region,
    category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit
)
SELECT
    order_id,
    TO_DATE(order_date, 'MM/DD/YYYY'),
    TO_DATE(ship_date, 'MM/DD/YYYY'),
    customer_id,
    customer_name,
    segment,
    region,
    category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit
FROM sales_staging;
