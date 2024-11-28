-- Start 1 -- 

select replace(replace(phone , '(' , '') , ')' , '')
from customer

-- End 1 -- 

-- Start 2 -- 

select concat(upper(substring('lorem ipsum', 1, 1)), lower(substring('lorem ipsum', 2)));

-- End 2 -- 

-- Start 3 -- 

select name
from track
where name like '%run%';

-- End 3 --

-- Start 4 -- 

select email
from customer
where email like '%gmail%'

-- End 4 -- 

-- Start 5 --

select name 
from track
where (select MAX(length(name)) from track) = length(name);

-- End 5 --

-- Start 6 -- 

select 
	to_char(invoice_date , 'MM') as month_id,
	sum(total) as sales_sum
from invoice
where 
	extract (year from invoice_date) = 2021
group by 
	month_id 
order by 
	month_id ;

-- End 6 --

-- Start 7 --

select 
	to_char(invoice_date , 'MM') as month_id,
	to_char(invoice_date , 'Month') as month,
	sum(total) as sales_sum
from invoice
where 
	extract (year from invoice_date) = 2021
group by 
	month_id , month
order by 
	month_id ;

-- End 7 --

-- Start 8 --

select 
	concat_ws(' ' , first_name , last_name) as full_name
	, birth_date , age(birth_date) as age_now 
from employee
order by 
	birth_date 
limit 3

-- End 8 -- 

-- Start 9 --

SELECT 
    avg((Age(CURRENT_DATE + interval '3 years 4 months',birth_date)))as something
FROM 
    employee;

-- End 9 --
   
-- Start 10 -- 

select
	extract('year' from invoice_date) as sales_py
	, billing_country
	, sum(total) as total_sales
from invoice
group by sales_py, billing_country
having sum(total) > 20
order by sales_py asc, total_sales desc;

-- End 10 --

