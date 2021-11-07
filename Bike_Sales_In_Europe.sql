
SELECT *
FROM Bike_Sales..Sales$
;

SELECT COUNT(*) AS Total_Data_Set
FROM Bike_Sales..Sales$
 ;


SELECT Product, count(product) AS Total_Product
FROM Bike_Sales..Sales$
GROUP BY Product
HAVING count(product) > 1
ORDER BY count(product) Desc
;


--Total profit by country

SELECT Country,sum(Profit) AS Total_Profit
FROM Bike_Sales..Sales$
GROUP BY Country
ORDER BY Total_Profit DESC
;

-- Total revenue by country

SELECT Country,sum(Revenue) AS Total_Revenue
FROM Bike_Sales..Sales$
GROUP BY Country
ORDER BY Total_Revenue DESC
;

--Profit by country and product category

SELECT Country, Product_Category, sum(Profit) AS Total_Profit
FROM Bike_Sales..Sales$
GROUP BY Country, Product_Category
ORDER BY Country 
;

--Revenue by country and product category

SELECT Country, Product_Category, sum(Revenue) AS Total_Profit
FROM Bike_Sales..Sales$
GROUP BY Country, Product_Category
ORDER BY Country 
;

--Global revenue performance by year

SELECT Year,Sum(Revenue) AS Revenue_Generated_By_Year
FROM Bike_Sales..Sales$
GROUP BY Year
ORDER BY Year
;

--Global profit performance by year
SELECT Year,Sum(Profit) AS Profit_Generated_By_Year
FROM Bike_Sales..Sales$
GROUP BY Year
ORDER BY Year
;

---What are the customers buying according to their age

SELECT Age_Group, Product_Category,Sum(Revenue) AS Revenue_By_Age
FROM Bike_Sales..Sales$
GROUP BY Age_Group, Product_Category
ORDER BY Age_Group
;

--Let's drill down and see revenue performance by country, per year

SELECT Year, Country,Sum(Revenue) AS Revenue_By_Year
FROM Bike_Sales..Sales$
GROUP BY Year, Country
ORDER BY Year
;

--Age groups that are biggest spenders, by country

SELECT country,Age_Group,Sum(Revenue) AS Revenue_By_Age
FROM Bike_Sales..Sales$
GROUP BY country, Age_Group
ORDER BY Country
;


--Let's drill down on gender spend, by country.

SELECT country,Customer_Gender,Sum(Revenue) AS Revenue_By_Age
FROM Bike_Sales..Sales$
GROUP BY country, Customer_Gender
ORDER BY Country
;

--How are the product categories performing

SELECT Product_Category, SUM(Revenue) AS Revenue_Generated
FROM Bike_Sales..Sales$
GROUP BY Product_Category
ORDER BY Revenue_Generated
;

---Sort revenue from sub categories

SELECT Sub_Category, SUM(Revenue) AS Revenue_Generated
FROM Bike_Sales..Sales$
GROUP BY Sub_Category
ORDER BY Revenue_Generated DESC
;

--Sort revenue from product sales

SELECT Product, SUM(Revenue) AS Revenue_Generated
FROM Bike_Sales..Sales$
GROUP BY Product
ORDER BY Revenue_Generated DESC
;