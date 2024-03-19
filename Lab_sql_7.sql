use sakila;

select * from sakila.actor;
select last_name from actor
	group by last_name 
		having count(*)= 1;


select last_name from actor 
	group by last_name 
		having count(*) > 1;
        

select * from sakila.rental;

select staff_id, count(*) as Total_Rentals_Per_Employe from rental
	group by staff_id;

select * from sakila.film;

select release_year, count(*) as Toata_Film_Per_Year from film 
	group by release_year;
    
select rating, count(*) as Total_Rating_Each_Group from film
	group by rating;
    
Select rating,round(avg(length), 2) as Mean_Length from film
	group by rating;
    
select rating from film
group by rating having avg(length) > 120;


