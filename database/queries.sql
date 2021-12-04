-- QUERIES
--- GET ALL
select
	cl.classified_id,
	cl.title,
	cl.price,
	cl.created_at,
	ct.category_id,
	ct.name
from classifieds cl
join categories as ct using (category_id)
;	

--- GET ONCE
select
	cl.classified_id,
	cl.title,
	cl.price,
	cl.created_at,
	ct.category_id,
	ct.name
from classifieds cl
join categories as ct using (category_id)
where cl.classified_id = 1
;

--- DELETE
delete from 
	classifieds
where
	classified_id = 3
returning 
	*
;

--- UPDATE
update classifieds
set 
    title = coalesce('Avtomabil x5 sotiladi', title),
    price = coalesce(null, price),
    category_id = coalesce(1, category_id)
where classified_id = 1
returning
	*
;