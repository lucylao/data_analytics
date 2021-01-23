--- Lucy_Lao_Unit5_Assignment_6 ---

--- 1. Join the film to the film_actor table ---
select * from film
join film_actor
on film.film_id = film_actor.film_id

--- 2. Join the actor table to the film_actor table ---
select * from actor
join film_actor
on actor.actor_id = film_actor.actor_id

--- 3. Join actor, film_actor and film tables together ---
select * from actor
join film_actor
on actor.actor_id = film_actor.actor_id
join film
on film_actor.film_id = film.film_id