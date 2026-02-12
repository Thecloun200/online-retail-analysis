/* ===============================
   1️⃣ Total Revenue (Cleaned Data)
================================== */

SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail
WHERE Quantity > 0 AND UnitPrice > 0;

/* ===============================
   2️⃣ Top  Countries by Revenue
================================== */

SELECT Country,
       SUM(Quantity * UnitPrice) AS total_sales
FROM online_retail
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY Country
ORDER BY total_sales DESC;


/* ===============================
   3️⃣ Revenue Contribution by Country
================================== */

SELECT Country,
       SUM(Quantity * UnitPrice) AS total_sales,
       ROUND(
         SUM(Quantity * UnitPrice) * 100.0 /
         (SELECT SUM(Quantity * UnitPrice)
          FROM online_retail
          WHERE Quantity > 0 AND UnitPrice > 0), 2
       ) AS sales_percentage
FROM online_retail
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY Country
ORDER BY total_sales DESC;

/* ===============================
    Top customers in purchase 
================================== */

select CustomerID ,sum(Quantity*UnitPrice) as totalPurchase
from online_retail
where Quantity>0 And UnitPrice>0 AND CustomerID IS NOT NULL
group by CustomerID
order by totalPurchase Desc ;


/* ===============================
    Monthly Sales Trend
================================== */
SELECT 
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS monthly_sales
FROM online_retail
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY monthly_sales DEsc;

 /* ===============================
    10 top products in revenue
================================== */

SELECT top 10 Description,
       SUM(Quantity * UnitPrice) AS product_revenue
FROM online_retail
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY Description
ORDER BY product_revenue DESC;




