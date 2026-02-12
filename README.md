📌 Project Overview

This project analyzes an Online Retail dataset using SQL to extract key business insights related to revenue performance across countries.

The analysis focuses on:

Revenue calculation

Data cleaning

Top-performing countries

Business insights extraction

🗂 Dataset Description

The dataset contains transactional sales data including:

InvoiceNo

StockCode

Description

Quantity

InvoiceDate

UnitPrice

CustomerID

Country

🧹 Data Cleaning Process

To ensure accurate revenue calculation, the following filters were applied:

WHERE Quantity > 0
AND UnitPrice > 0


This removes:

Returned transactions (negative quantities)

Zero-priced records

Revenue was calculated using:

SUM(Quantity * UnitPrice)

🌍 Top 5 Countries by Revenue
SELECT Country,
       SUM(Quantity * UnitPrice) AS Total_Sales
FROM online_retail
WHERE Quantity > 0
  AND UnitPrice > 0
GROUP BY Country
ORDER BY Total_Sales DESC
LIMIT 5;

📊 Results
Country	Total Sales
United Kingdom	9,025,222
Netherlands	285,446
EIRE	283,453
Germany	228,867
France	209,715
📈 Key Insights

The United Kingdom dominates overall revenue.

A small number of countries contribute to the majority of total sales.

Data cleaning significantly impacts revenue totals.

Returns (negative quantities) reduce gross sales and must be handled carefully in financial reporting.

🛠 Tools Used

SQL (Aggregation, Filtering, Grouping)

MySQL / PostgreSQL (or your DB engine)

Git & GitHub for version control

🎯 Skills Demonstrated

Data Cleaning

Revenue Calculation

Business Insight Extraction

SQL Aggregations (SUM, GROUP BY, ORDER BY)

Analytical Thinking

🚀 Future Improvements

Top 10 Customers by Revenue

Monthly Sales Trend Analysis

Product-Level Performance Analysis

Customer Segmentation
