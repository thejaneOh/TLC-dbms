--1. In a SELECT-statement, add the difference between 2011-01-01 and the current date to the sales date field in the sales table.
--The output should show both the new value and original sales date, with the original in dd-mm-yy format.

select *,date_part('day',current_date::timestamp - ord_date::timestamp) from pubs2.sales s; 

--2. Show how many days remain between now and Thanksgiving and/or Christmas and/or New Years Day.

--3. Show how old you are as a number of days - you don't have to be too honest about your year of birth if you are over 25 

--4. For each of the publication dates in titles, display the difference between the pubdate and the current date in days as an integer.

--5. From the sales table convert the date field to dd/mm/yy format

--6.select from the sales table stor_id for sales on your birthday in "dd/mm/yy" format. If there are none, then pick sales for the date nearest to your birthdate. 
--Search again for before your birthday.

--7. Study the reference documents for your DBMS and then display each book title with its publication date converted to the correct format for each of the following regions:
	--USA
	--UK
	--Japan


-- 8. Show the first word of each title.

--9. Print the number of characters which could be added to each of the values in the title field before the data is truncated.
--You can find the title column's length using the system commands for your DBMS.

--10. Replace the first space in the address field in the authors table with the word  --hello--
.

--11. Provide a randomly generated price for all titles lacking a price in the titles table. (math functions)

--12. Print all phone numbers from the authors table without the three digit area code.

--13. Capitalise the second character in all last names from the authors table.
