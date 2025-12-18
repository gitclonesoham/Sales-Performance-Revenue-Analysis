-- 1. Revenue by region
SELECT region, ROUND(SUM(sales),2) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- 2. Top 10 products by revenue
SELECT product_name, ROUND(SUM(sales),2) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- 3. Loss-making products
SELECT product_name, ROUND(SUM(profit),2) AS total_profit
FROM sales
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit;

-- 4. Monthly revenue trend
SELECT DATE_TRUNC('month', order_date) AS month,
       ROUND(SUM(sales),2) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
