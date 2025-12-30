-- Overall business performance
SELECT
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(Sales AS FLOAT)), 2) AS total_sales,
  ROUND(SUM(CAST(Profit AS FLOAT)), 2) AS total_profit
FROM dbo.Superstore_Spreadsheet;


-- Regional performance analysis
SELECT
  Region,
  ROUND(SUM(CAST(Sales AS FLOAT)), 2) AS total_sales,
  ROUND(SUM(CAST(Profit AS FLOAT)), 2) AS total_profit
FROM dbo.Superstore_Spreadsheet
GROUP BY Region
ORDER BY total_sales DESC;

-- Product category performance
SELECT
  Category,
  ROUND(SUM(CAST(Sales AS FLOAT)), 2) AS total_sales,
  ROUND(SUM(CAST(Profit AS FLOAT)), 2) AS total_profit
FROM dbo.Superstore_Spreadsheet
GROUP BY Category
ORDER BY total_profit DESC;

-- Identify top and underperforming sub-categories
SELECT
  Sub_Category,
  ROUND(SUM(CAST(Sales AS FLOAT)), 2) AS total_sales,
  ROUND(SUM(CAST(Profit AS FLOAT)), 2) AS total_profit
FROM dbo.Superstore_Spreadsheet
GROUP BY Sub_Category
ORDER BY total_profit DESC;

-- Analyze effect of discounts on profitability
SELECT
  Discount,
  COUNT(*) AS order_count,
  ROUND(AVG(CAST(Profit AS FLOAT)), 2) AS avg_profit
FROM dbo.Superstore_Spreadsheet
GROUP BY Discount
ORDER BY Discount;

-- Operational performance by ship mode
SELECT
  Ship_Mode,
  COUNT(*) AS total_orders,
  ROUND(SUM(CAST(Profit AS FLOAT)), 2) AS total_profit
FROM dbo.Superstore_Spreadsheet
GROUP BY Ship_Mode
ORDER BY total_profit DESC;
