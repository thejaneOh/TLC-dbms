--Getting Started
--Current Time

--1. Display the current date
--select now() ;
--select CURRENT_DATE;


--2. Display the current time
--select CURRENT_TIME;


--3. Display the current timestamp
--select current_timestamp;


--Converting from Strings

--1. Convert the string '2018-09-26' to a date
--select to_date('2018-09-26', 'YYYY-MM-DD') ;


--2. Convert the string '2018-09-26' to a timestamp
--select to_timestamp('2018-09-26', 'YYYY-MM-DD') 


--Subtracting Dates

--1. How many days are there between '2018-09-26' and '2018-12-25'?
--select date_part('day','2018-12-25'::timestamp - '2018-09-2'::timestamp); 

--2. How many days have elapsed since each book in TITLES was published?
--select ord_date(current_date-ord_date) from pubs2.sales s
--select ord_date, date_part('day',current_date::timestamp - ord_date::timestamp) from pubs2.sales s; 


--Extracting components from dates

--1. Display the year of publication of each book in TITLES
--select extract(year from pubdate) from pubs2.titles t 


--2. Display the day of publication of each book in TITLES
--select date_part('day', pubdate) from pubs2.titles t -- day,dow,doy,

--Using TIMESTAMPDIFF

--The function TIMESTAMPDIFF() provides a rough approximation of the difference between two timestamps.

	--What shortcuts does it take in calculating the difference?

	--When might it make sense to use TIMESTAMPDIFF()?

	--using TIMESTAMPDIFF(), get the difference between these dates: '2018-03-02' and '2018-02-01'.






