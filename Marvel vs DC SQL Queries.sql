-- Retrieve the top 5 highest grossing movies, along with IMDb ratings and directors.

SELECT title, imdb_rating, director
FROM marveldc
ORDER BY imdb_gross DESC
LIMIT 5


-- Get the average IMDb rating and runtime for movies with an MPAA rating of 'PG-13'

SELECT AVG(imdb_rating) AS average_rating, AVG(runtime) AS average_runtime
FROM marveldc
WHERE mpa_rating = 'PG-13'


-- List the directors and their repective movies in descending order.

SELECT director, COUNT(*) AS movie_count
FROM marveldc
GROUP BY director
ORDER BY movie_count DESC


-- Find the average IMDb rating for movies released in the year 2016.

SELECT AVG(imdb_rating) AS average_rating
FROM marveldc
WHERE year = 2016


-- Find the highest-rated movie for each director, along with the director's name.

SELECT director, MAX(imdb_rating) AS highest_rating
FROM marveldc
GROUP BY director


-- Retrieve the movies released between 2010 and 2020, sorted by their IMDb rating in between 2010 and 2020.
 
SELECT title, imdb_rating
FROM marveldc
WHERE year BETWEEN 2010 and 2020
ORDER BY imdb_rating DESC


-- Retrieve the top 10 with a Tomato Meter rating above 80 and an IMDb rating above 7.5

SELECT title
FROM marveldc
WHERE tomato_meter > 80 AND imdb_rating > 7.5
LIMIT 10;