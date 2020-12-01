-- 1.
CREATE table Sales(name varchar(15), discount varchar(15), month varchar(5), price INT); 

-- 2.
select name
from Sales
group by name
Having max(price) != min(price);  -- name -> price is good 

select month
from Sales
group by month
Having max(discount) != min(discount); -- month -> discount is good

select name
from Sales
group by name
Having max(discount) != min(discount);   -- name -> discount is not good 

select name
from Sales
group by name
Having max(month) != min(month);  -- name -> month is not good

-- Final FD: name -> price, month -> discount

--3. 
/*
Start: Sales(name, discount, month, price).							use name -> price
	   Name_prices(name, price), Sales_1(name, discount, month).  	use month -> discount on Sales_1
	   Name_prices(name, price), Month_discount(discount, month), Name_month(name, month).  done
*/
CREATE TABLE Name_prices(name varchar(15) PRIMARY KEY, price INT); 
CREATE TABLE Month_discount(month varchar(15) PRIMARY KEY, discount varchar(15)); 
CREATE TABLE Name_month(name varchar(15) REFERENCES Name_prices(name), month varchar(15) REFERENCES Month_discount(month), PRIMARY KEY (name, month)); 

--4. 
INSERT INTO Name_prices 
SELECT DISTINCT name, price FROM Sales; 

INSERT INTO Month_discount
SELECT DISTINCT month,  discount FROM Sales; 

INSERT INTO Name_month
SELECT DISTINCT name,  month FROM Sales; 


SELECT COUNT(*) FROM Name_prices; -- 36 rows
SELECT COUNT(*) FROM Month_discount;  -- 12 rows
SELECT COUNT(*) FROM Name_month; -- 426 rows















