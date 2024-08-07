select * from movies
	
select * from reviews

---1) find avg rating for each movie and display the movie title along with the avg rating

select m.title, avg(r.rating) as average_rating
from movies m
join reviews r on m.movie_id = r.movie_id
group by m.title

---2) list all movies with their respective number of review, and order the result by the number of reviews in descending order

select m.title, count(r.review_id) as number_of_review
from movies m
left join reviews r on m.movie_id = r.movie_id
group by m.title
order by number_of_review desc 

---3) Retrieve the titles of movies that have an average rating of at least 4.0, and sort the result by the average rating in descending order.

select m.title, avg(r.rating) as average_rating
from movies m
join reviews r on m.movie_id = r.movie_id
group by m.title
having avg(r.rating)>=4
order by average_rating desc

---4) Find the top 5 highest-rated movies based on the average rating and display the movie title and average rating

select m.title, avg(r.rating) as average_rating
from movies m
join reviews r on m.movie_id = r.movie_id
group by m.title
order by average_rating desc
limit 5