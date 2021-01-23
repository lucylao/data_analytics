SELECT COUNT(amount)
FROM payment
WHERE amount = 0.00;

select * from payment
limit 10;

select customer_id
from payment
group by customer_id;

select staff_id, count(amount), sum(amount)
from payment
group by staff_id;

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc
limit 5;

select customer_id, sum(amount)
from payment
group by customer_id;

select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount) > 200;

/*select customer_id, sum(amount)
from payment
where sum(amount) > 200
group by customer_id; 

WHERE cannot be used on aggregrate data */

select store_id, count(customer_id)
from customer
group by store_id;

select store_id, count(customer_id)
from customer
group by store_id
having count(customer_id) > 300;

select rating, round(avg(rental_rate),2)
from film
where rating IN ('R', 'G', 'PG')
group by rating
having avg(rental_rate) < 3;

select customer_id, count(amount)
from payment
group by customer_id
having count(amount) >= 35;
