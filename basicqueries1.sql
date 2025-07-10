CREATE DATABASE Basic_Queries1;

USE Basic_Queries1;

CREATE TABLE movies(
	movie_code INT,
    title VARCHAR(100),
    director VARCHAR(100),
    release_year YEAR,
    rating DECIMAL(3,1)
);

Select * from movies;


INSERT INTO movies (movie_code,title,director,release_year,rating)VALUES
(201,'Inception','Christopher Nolan',2010,8.8);

INSERT INTO movies(movie_code,title,director,release_year,rating)VALUES
(202,'The Matrix','Lana Wachowski',1999,8.7);

INSERT INTO movies(movie_code,title,director,release_year,rating)VALUES
(203,'Interstellar','Christopher Nolan',2014,8.6);

INSERT INTO movies(movie_code,title,director,release_year,rating)VALUES
(204,'Parasite','Bong Joon-ho',2019,8.5);

INSERT INTO movies(movie_code,title,director,release_year,rating)VALUES
(205,'Tenet','Christopher Nolan',2020,7.8);

INSERT INTO movies(movie_code,title,director,release_year,rating)VALUES
(206,'Avatar','James Cameron',2009,7.9);

-- get movies by christopher nolan
SELECT * FROM movies WHERE director = 'Christopher Nolan';

-- movie with release year < 2018 and rating > 7.2
SELECT * FROM movies WHERE release_year < 2018 AND rating > 7.2;

-- movie written by james cameron or quantity less than 4
SELECT * FROM movies WHERE director = 'James Cameron' OR rating < 8.3;

-- movie not written by bong-joon ho
SELECT * FROM movies WHERE NOT director = 'Bong joon-ho';