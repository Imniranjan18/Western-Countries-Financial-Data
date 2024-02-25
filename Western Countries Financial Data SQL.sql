use Western_Countries_Financial_Data;
show tables;
Select * From Countries_Financial_Data;

-- 1 Profit and sales by Qtr
SELECT CASE 
        WHEN Month_Number BETWEEN 1 AND 3 THEN '1st Quarter'
        WHEN Month_Number BETWEEN 4 AND 6 THEN '2nd Quarter'
        WHEN Month_Number BETWEEN 7 AND 9 THEN '3rd Quarter'
        ELSE '4th Quarter' END AS Quarter,
    ROUND(SUM(sales), 2) AS Total_sales,
    ROUND(SUM(profit), 2) AS Total_profit
FROM Countries_Financial_Data
GROUP BY Quarter;

-- 2 Country wise Sales
SELECT Country, ROUND(SUM(sales), 2) AS Total_sales 
FROM Countries_Financial_Data 
GROUP BY Country;

-- 3 Yearly sales
SELECT Year, 
ROUND(SUM(sales), 2) AS total_sales 
FROM Countries_Financial_Data 
GROUP BY Year;

-- 4 Product wise Sales
SELECT product, ROUND(SUM(sales), 2) AS total_sales 
FROM Countries_Financial_Data 
GROUP BY product 
ORDER BY total_sales DESC;

-- 5 Segement wise Profit
SELECT Segment, ROUND(SUM(Profit), 2) AS total_Profit 
FROM Countries_Financial_Data 
GROUP BY Segment 
ORDER BY total_Profit DESC;

-- 6 Product Wise Dicount
select product, Round(sum(sales),2) as Total_discounts 
from Countries_Financial_Data
group by product
order by Total_discounts Desc;

-- 7 No of Units sold year over Year
select year, sum(units_sold) as Total_unit_sold
from Countries_Financial_Data
group by year;

-- 8 segment wise Product wise profit
select segment, product,round(sum(profit),2) as Total_profit
from Countries_Financial_Data
Group by segment, product
order by segment,Total_profit desc;

-- 9 Top 2 countries
select country, Round(sum(sales),2) as Total_sales
from Countries_Financial_Data
group by country
order by Total_sales Desc
Limit 2;

-- 10 Bottom 3 products 
select Product, Round(sum(sales),2) as Total_sales
from Countries_Financial_Data
group by Product
order by Total_sales
Limit 3;







