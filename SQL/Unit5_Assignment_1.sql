--- Lucy_Lao_Unit_5_Assignment_1 ---
--- 1. Return all columns and rows from customer table ---
select * from customer

--- 2. First name, last name and email from customer table ---
select first_name, last_name, email from customer

--- 3. Return all rows and columns from film table ---
select * from film

--- 4. Return unique rows from the release_year column in film table ---
select distinct release_year from film 

--- 5. Return unique rows from the rental_rate column in the film table ---
select distinct rental_rate from film

--- 6. Find the email address for Nancy Thomas ---
select email from customer
where first_name = 'Nancy' and last_name = 'Thomas'

--- 7. Find the phone number given the address ---
select phone from address
where address = '259 Ipoh Drive'

--- 8. Query from customer table where store id is 1 and address id is greater than 150 ---
select * from customer
where store_id > 1 and address_id > 150

--- 9. Query from payment table where amount is either $4.99 or $1.99 ---
select * from payment
where amount = 4.99 or amount = 1.99

--- 10. Return list of transactions from payment table where amount is greater than 5 ---
select * from payment
where amount > 5