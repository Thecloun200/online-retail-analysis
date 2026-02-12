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


