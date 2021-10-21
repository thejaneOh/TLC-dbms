--Find all titles with an undefined price in table titles
--select * from pubs2.titles t 
--where price isnull 


--Find all titles with an undefined price in table titles and supply a price of $20.00 for those with no defined price
--select * from pubs2.titles t
--where price isnull::numeric (price, 20.00) 

--select case type when null then "20.00" else type end as type from pubs2.titles


--List the first 50 characters (of the pr_info column) of the pub_info table
--select LEFT(pr_info,50) from pubs2.pub_info pi2 


--Examine the Postgres function reference for alternative ways of converting date values to varchar.
--select ord_date from pubs2.sales s 
--1. Using the to_char() function
--select to_char(ord_date, 'YYYY-MM-DD') from pubs2.sales s 

--2. using casting
--select (ord_date as VARCHAR) from pubs2.sales s,


--Locate and use one the functions that would allow you to specify the format to be used when outputting a date.
-- Format the ord_date in sales so it looks like this: Tuesday 13th September 1994

--select to_char(ord_date, 'Day DDth Mon YYYY') from pubs2.sales s 







	