# Marvel vs DC Franchise Analysis (Data Analytics Project)
### Tools Used: SQL & PowerBI
I created an Marvel vs. DC analytics project using SQL and Power BI to analyze and visualize data. By leveraging SQL's data querying capabilities, I organized and analyzed relevant data on Marvel and DC properties.

With Power BI's visualization features, I created dynamic and visually appealing dashboards and reports that offer insights into Box Office Performance, IMDb and Rotten Tomatos Rating, and Market Share.

This project provides companies with valuable insights to optimize their marketing strategies, licensing agreements, and product development efforts in the comic book industry and movie franchise. By harnessing data-driven insights, businesses can adapt to market dynamics and gain a competitive edge.

[SQL files, Dataset in SQL and CSV and PowerBI file are Available in the files]

## POWERBI DASHBOARD

![Marvel vs DC PowerBI Dashboard](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Marvel%20vs%20DC%20PowerBI%20Dashboard.png)

## SQL QUERIES (Screenshots)

![Q1 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q1%20MVSDC.png)
![Q2 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q2%20MVSDC.png)
![Q3 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q3%20MVSDC.png)
![Q4 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q4%20MVSDC.png)
![Q5 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q5%20MVSDC.png)
![Q6 MVSDC.png](https://github.com/AbhinavG5/Marvel-vs-DC-Project/blob/main/Q6%20MVSDC.png)

## SQL QUERIES in TEXT

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

