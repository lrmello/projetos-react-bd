select first_name from customer where first_name like "P%";

select first_name from customer where first_name in ('Penelope', 'John', 'Maria', 'Barbara');

select title from film where title like "c%";

select rental_duration from film where rental_duration > 3;

select * from rental;

select rental_date from rental where rental_date >= "2005-05-27" and rental_date < "2005-05-28";

select rental_date from rental where rental_date between "2005-05-26" and "2005-05-29";

select distinct first_name from actor order by first_name;

select min(amount) as valor_maximo,customer_id from payment group by customer_id order by min(amount);

select * from city inner join address on city.id = id_city
inner join customer on address = address_id order by city
;

select first_name, (select address from address a where a.address_id = customer.address_id) as endereço from customer; 
select first_name, address as endereco from address inner join address on city;
select * from address;