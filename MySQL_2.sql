#1. Create a database named library and a table named books with the following
columns:
 id (INT, Primary Key, Auto Increment)
 title (VARCHAR(255))
 author (VARCHAR(100))
 year (YEAR)
 genre (VARCHAR(100))
create database library;
use library;
create table books(
id INT Primary Key Auto_Increment,
title VARCHAR(255),
author VARCHAR(100),
year YEAR,
genre VARCHAR(100));

#2. Insert the following book records into the books table:
 "The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
 "Pride and Prejudice", "Jane Austen", 1813, "Romance"
 "To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
 "1984", "George Orwell", 1949, "Dystopian"
 "Moby Dick", "Herman Melville", 1851, "Adventure"
insert into books(title, author, year, genre)
values("The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("Pride and Prejudice", "Jane Austen",1913, "Romance"),
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),

("1984", "George Orwell", 1949, "Dystopian"),
("Moby Dick", "Herman Melville", 1951, "Adventure");
select * from books;

#3. Write a query to select all books where the title starts with the letter 'T' using
the LIKE operator.
select * from books where title like "T%";

#4. Write a query to find all books where the author's last name ends with 'son'
using the LIKE operator.
select * from books where author like "%son";

#5. Write a query to find all books where the title contains the word 'and' using the
LIKE operator.
select * from books where title like "%and%";

#6. Write a query to retrieve all books where the title ends with the word 'bird'
using the LIKE operator.
select title from books where title like "%bird";

#7. Write a query to find all books where the title has exactly 3 characters using
the REGEXP operator.
select * from books where title regexp "___";

#8. Write a query to select all books where the title contains a number using the
REGEXP operator.
select title from books where title regexp "[0-9]";

#9. Write a query to retrieve all books where the author's name starts with any
letter between 'A' and 'J' using the REGEXP operator.
select title from books where title regexp "___";

#10. Write a query to select all books where the genre is either 'Fiction' or
'Adventure' using the REGEXP operator.
select title from books where genre regexp "Fiction" or "Adventure";

#11. Write a query to find all books where the title contains at least one uppercase
letter using the REGEXP operator.
select title from books where title regexp "[A-Z]";

#12. Write a query to find all books where the year of publication is between 1800
and 1950 using the LIKE operator.
select title, YEAR from books where YEAR between 1800 AND 1950;

#13. Write a query to retrieve all books where the author's name contains exactly
two words using the REGEXP operator.
SELECT title, author FROM books WHERE author REGEXP '^[A-Z][a-z]+ [A-Z][a-z]+$';

#14. Write a query to find all books where the title starts with the letter 'P' and
contains exactly two words using the REGEXP operator.

select title from books where title regexp "^P[a-zA-Z]* [a-zA-Z]+$";

#15. Write a query to find all books where the title contains any special characters
(e.g., '!', '@', '#', etc.) using the REGEXP operator.
select title from books where title regexp '[[:punct:]]';