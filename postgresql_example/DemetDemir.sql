
--1.question

select customer.first_name ,customer.last_name from customer inner join payment on
customer.customer_id=payment.customer_id where payment.payment_date between '2007-04-01' and now()

--2.question
select film.release_year, film.title,category.name from film inner join film_category on
film.film_id=film_category.film_id inner join category on 
category.category_id=film_category.category_id where category.name='Action' or category.name='Animation'


--3.question


select payment.payment_date, customer.first_name, customer.last_name from customer inner join 
payment on payment.customer_id=customer.customer_id where  payment_date in (select max(payment_date) from payment) 

-- 4.question
select film.film_id,film.title from film 
where film.film_id not in (select inventory.film_id from film inner join inventory on inventory.film_id=film.film_id )
and  title between 'P' and 'Z'





--5.question
select customer.first_name , customer.last_name, sum(payment.amount) from customer inner join 
payment on payment.customer_id=customer.customer_id where customer.first_name like 'B%'
group by  customer.first_name , customer.last_name








