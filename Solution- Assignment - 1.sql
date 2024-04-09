-- Assignment 1 Solutions
Use mavenmovies;

-- Question 1 : Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- Primary Key : ID which represent its table called Primary Key also primary key helps to build connection between two tables. Primary Key can not be Null and Duplicate. There is a single row of Primary Key in a table.
-- Foreign Key : Foreign key helps to build the connection between two tables but it might have null and duplicate values both. This can be multiple rows which represent the Foreign key.

-- Question 2 : List all details of actors.
Select * from Actor;

-- Question 3 : List all customer information from DB. 
Select * from Customer;

-- Question 4 : List different countries.
Select distinct * from country;

-- Question 5 : Display all active customers.
Select * from customer where active = 1;

-- Question 6 : List of all rental IDs for customer with ID 1. 
Select rental_id from rental where customer_id = 1;

-- Question 7 : Display all the films whose rental duration is greater than 5.
Select title from film where rental_duration > 5;

-- Question 8 : List the total number of films whose replacement cost is greater than $15 and less than $20.
Select count(*) from film where replacement_cost >15 and replacement_cost <20;

-- Question 9 : Display the count of unique first names of actors.
Select count(distinct(first_name)) from actor;

-- Question 10 : Display the first 10 records from the customer table.
Select * from customer limit 10;

-- Question 11 : Display the first 3 records from the customer table whose first name starts with ‘b
Select * from customer where First_name like 'B%' limit 3;

-- Question 12 : Display the names of the first 5 movies which are rated as ‘G’. 
Select title from film where rating = "G" limit 5;

-- Question 13 : Find all customers whose first name starts with "a".
Select First_name, Last_name from customer where first_name like 'a%';

-- Question 14 : Find all customers whose first name ends with "a".
Select first_name, last_name from customer where first_name Like '%a';

-- Question 15 : Display the list of first 4 cities which start and end with ‘a’.
Select city from city where city like 'a%a' limit 4;

-- Question 16 : Find all customers whose first name have "NI" in any position. 
Select first_name, last_name from customer where first_name like '%NI%';

-- Question 17 : Find all customers whose first name have "r" in the second position.
Select first_name, last_name from customer where first_name like '_r%';

-- Question 18 : Find all customers whose first name starts with "a" and are at least 5 characters in length. 
Select first_name, last_name from customer where first_name like 'a____';

-- Question 19 : Find all customers whose first name starts with "a" and ends with "o". 
Select first_name , last_name from customer where first_name like 'a%o';

-- Question 20 : Get the films with pg and pg-13 rating using IN operator.
Select * from film where rating in ("PG" , "PG-13") ;

-- Question 21 : Get the films with length between 50 to 100 using between operator.
Select title from film where length between 50 and 100;

-- Question 22 : Get the top 50 actors using limit operator.
Select first_name , last_name from actor limit 50;

-- Question 23 : Get the distinct film ids from inventory table. 
Select distinct film_id from inventory;

