---SUB-Queries


----------------------
--Q1. Which publishers have published at least one book?
select p2.pub_name from pubs2.publishers p2 where  pub_id in (
	select p2.pub_id from pubs2.titles t group by t.pub_id
		having count(t.pub_id) >= 1
)

--Q2. Which authors have been published by more than one publisher?
select a.au_lname, a.au_fname from pubs2.authors a where au_id  in (
	select t.au_id from pubs2.titleauthor t where t.title_id in (
		select t2.title_id from pubs2.titles t2 where  t2.pub_id in (
			select pub_id from pubs2.publishers p group by pub_id
				having count(pub_name) >= 1
		)
	)
);

--Q3. Which authors live in a city where a publisher exists?
select a.au_fname, a.au_lname from pubs2.authors a where au_id  in (
	select t.au_id from pubs2.titleauthor t where title_id in (
		select t2.title_id from pubs2.titles t2 where  pub_id in (
			select pub_id from pubs2.publishers p where p.city = a.city 
		)
	)
);
-------------------------------------------------------------

--1. Which publishers have published at least one book?

select distinct t.pub_name 
from pubs2.publishers p inner join pubs2.titles t 
on p.pub_id = t.pub_id 



select distinct(p.pub_id)
from pubs2.publishers p inner join pubs2.titles t 
on p.pub_id = t.pub_id 


-- I need to add a where 

--2. Which authors have been published by more than one publisher?
select au_fname, au_lname 
from pubs2.authors a inner join pubs2.pub_info pi2 
on a. = p.


--gives authors
select a.au_id 
from pubs2.titleauthor t inner join pubs2.authors a 
on t.au_id = a.au_id




--ids of the titles
select t.title_id, p.pub_name 
from pubs2.publishers p inner join pubs2.titles t 
on p.pub_id =t.pub_id 




--3. Which authors live in a city where a publisher exists?
select a.au_fname,a.au_lname 
from pubs2.authors a 
where a.city in 
(select p.city 
from pubs2.publishers p) 


--4. How many authors are there with the same first initial?
select (left(au_fname,1))
from pubs2.authors a;




--5.What is the most expensive book?
select t.title, t.price 
from pubs2.titles t 
group by t.title,t.price 
having max(t.price) in
(select max(price)
from pubs2.titles)



--6. Which is the oldest published book? Which is the youngest?
select t.title, t.pubdate 
from pubs2.titles t
group by t.title,t.pubdate 
having max(age(t.pubdate)) in
(select max(age(t.pubdate)) from pubs2.titles t)


select t.title, t.pubdate 
from pubs2.titles t
group by t.title,t.pubdate 
having min(age(t.pubdate)) in
(select min(age(t.pubdate)) from pubs2.titles t)

--7. Which books are more expensive than all books of any other type?
select distinct t."type", t.price 
from pubs2.titles t
group by t.type,t.price ;


select t.price from pubs2.titles t group by t."type",t.price 
	having t.type in(select distinct t."type" from pubs2.titles t);

select t.price ,t.title 
from pubs2.titles t
group by t.price,t.title
having max(t.price) in
(select max(t.price)
from pubs2.titles t);



--8. Which books have an above average price for their type?



--9. How much above or below the "average price of all books" is the price for each book?




