select * from customer
inner join payment
on customer.customer_id = payment.customer_id;

select * from film limit 5;
select * from inventory limit 5;

select film.film_id, film.title, inventory_id
from film
left outer join inventory on inventory.film_id = film.film_id
where inventory_id is null
order by film.film_id;

select * from film
right join inventory on inventory.film_id = film.film_id

select * from film
full join inventory on inventory.film_id = film.film_id
