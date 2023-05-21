--Part1
--Q1--Answer:35050
SELECT SUM(Quantity * UnitPrice ) AS total_price from Sale_Table
--Q2--Answer:9
SELECT COUNT(DISTINCT Customer) AS number_of_uniqe_Customers FROM Sale_Table
--Q3--Answer:
select
  Product,
  Sum(Quantity) number_per_product
  from Sale_Table
  group by Product;
--Q4--Answer:
SELECT Customer,
Sum(Quantity * UnitPrice) total_amnt,
count(Customer) number_of_factor,
Sum(Quantity) total_Quantity
from Sale_Table  
where Quantity * UnitPrice>1500 
group by Customer
--Q5--Answer:5072.5
SELECT Sum(Quantity * UnitPrice * Sale_Profit.ProfitRatio ) as total_profit
FROM Sale_Table
join Sale_Profit on Sale_Table.Product=Sale_Profit.Product
--Q6--Answer:13
SELECT Customer,Date
from Sale_Table  
group by Date,Customer 
--Part2
CREATE TABLE Persons_Chart (
    ID int,
    name varchar(255),
    manager varchar(255) NULL,
    Manager_ID int NULL,
);
INSERT into Persons_Chart (ID,name,manager,Manager_ID)
VALUES (1,	'Ken',null,null)