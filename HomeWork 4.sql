-- Start 1 --

/*
 Name : Alijon
 Surname : Murtazoev
 
 Task Description : Here are the tasks that are being done in this file 
*/

-- End 1 --



-- Start 2 --

select name , genre_id
from track

-- End 2 --

-- Start 3 --

select 
	name as song
	, unit_price as price
	, composer as author
from track

-- End 3 -- 

-- Start 4 -- 

select 
	name
	, round(milliseconds/60000.0 , 2) as duration_in_min
from track
order by
	duration_in_min desc;

-- End 4 --

-- Start 5 -- 

select 
	name
	, genre_id
from track
limit 15;

-- End 5 -- 


-- Start 6 --

select *
from track
offset 49;

-- End 6 -- 

-- Start 7 -- 

select 
	name 
from track
where
	bytes >= 104857600;

-- End 7 --


-- Start 8 -- 

select
	name
	, composer
from track
where 
	composer != 'U2'	
limit 11
offset 9;

-- End 8 -- 


-- Start 9 -- 

select 
	min(invoice_date) as first_invoice
	, max(invoice_date) as last_invoice
from invoice;

-- End 9 -- 

-- Start 10 -- 

select 
	avg(total)
from invoice
where 
	billing_country = 'USA';

-- End 10 --

-- Start 11 --

select
	distinct billing_city
from invoice
group by billing_city
having (count(billing_city) > 1)

-- End 11 --


