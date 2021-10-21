--select avg(price::numeric) from pubs2.titles t  //num of books with price in titles
--select count(*) from pubs2.titles --number of rows intitles
--select count(distinct price) from pubs2.titles t --number of distinct prices in titles

--1. Get average prices from the titles table for each type of book, and convert type to char(30).
select distinct avg(price:: numeric) from pubs2.titles t group by "type" 


--2. Print the difference between (to a resolution of days) the earliest and latest publication date in titles
select max(pubdate), min(pubdate),  max(pubdate)- min(pubdate) from pubs2.titles t 

--3. Print the average, min and max book prices within the titles table organised into groups based on type and publisher id.
select  distinct avg(price:: numeric), min(price:: numeric),max(price:: numeric) 
from pubs2.titles t 
group by "type", pub_id 


--4. Refine the previous question to show only those types whose average price is > $20 
--and output the results sorted on the average price.
select  distinct "type" 
from pubs2.titles t 
group by "type", pub_id 
having avg(price:: numeric) > 20.00
order by "type" 

--5. List the books in order of the length of their title
select title
from pubs2.titles t
--order by length (title)  -- ascending order
order by length (title) desc --descending order



-Business Queries
--1. What is the average age in months of each type of title?
select avg(((date_part('year', age(pubdate::timestamp)) *12)+ date_part('month', age(pubdate::timestamp))) )
from pubs2.titles t;

select ((date_part('year', age(pubdate::timestamp)) *12)+ date_part('month', age(pubdate::timestamp)) )
from pubs2.titles t; -- age in months
select date_part('year', age(pubdate::timestamp)) from pubs2.titles t; -- age in years
-- returns 0
select date_part('month', current_date::timestamp - pubdate::timestamp) from pubs2.titles t; 


--2. How many authors live in each city?
select distinct count(au_fname),city 
from pubs2.authors a 
group by city



--3. What is the longest title?
select title
from pubs2.titles t 
where length(title) = (select max(length(title)) from pubs2.titles t2)


 -- gives the length of the longest titles
select max(length(title)) from pubs2.titles t;


--4. How many books have been sold by each store and how many books have been sold in total?
select distinct stor_id,SUM(qty) from pubs2.sales s 
group by stor_id 

--sold in total
select sum(qty) from pubs2.sales s 
 


