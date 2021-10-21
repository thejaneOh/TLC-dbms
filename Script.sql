--Table Joins

--1. Join the publishers and pub_info and show the publisher name and the first 40 characters of the pr_info information.
select pub_name, LEFT(pr_info,40)
from pubs2.publishers p inner join pubs2.pub_info pi2 
on pi2.pub_id = p.pub_id

-- 2. Join the publishers and titles tables to show all titles published by each publisher. Display the pub_id, pub_name and and title_id.
select p.pub_id,pub_name, title_id
from pubs2.publishers p inner join pubs2.titles t 
on p.pub_id = t.pub_id 

--3. For each title_id in the table titles, rollup the corresponding qty in sales and show: title_id, title, ord_num and the rolled-up value as a
-- column aggregate called Total Sold
select distinct t.title_id, sum(qty) as "Total Sold ",t.title
from pubs2.titles t inner join pubs2.sales s 
on t.title_id = s.title_id
group by t.title_id 

--wrong answer
select t.title,t.title_id, s.ord_num,qty as "Total Sold "
from pubs2.titles t inner join pubs2.sales s 
on t.title_id = s.title_id 


--4. For each stor_id in stores, show the corresponding ord_num in sales and the discount type from table discounts. 
--The output should consist of three columns: ord_num, discount and discounttype and should be sorted on ord_num
select s2.ord_num, s.discount, d.discounttype
from pubs2.stores s inner join pubs2.sales s2 inner join pubs2.discounts d 
on s.stor_id = s2.stor_id = d.stor_id 



