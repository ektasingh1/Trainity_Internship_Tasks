#1 Identify the five oldest users on the app

select *
from users
order by created_at asc limit 5;

#2 Identify the users who have never posted a single photo on Instagram

select * from users where id not in (select user_id from photos);

#3 Determine the winner of the contest with the most likes on a single photo.

select username, p.id, p.image_url, count(l.user_id) as Total_likes from photos p
join likes l on l.photo_id = p.id
join users u on p.user_id = u.id
group by p.id
order by Total_likes desc
limit 1;

#4 Identify and suggest the top five most commonly used hashtags on the platform.

select t.id, t.tag_name, t.created_at
from tags t 
join photo_tags pt on t.id = pt.tag_id
group by t.id
order by count(pt.photo_id) desc
limit 5;

#5 Determine the day of the week when most users register on Instagram.

SELECT dayname(created_at) as week_day, count(*) as total
from users
group by week_day
order by total desc;

#6. Calculate the average number of posts per user on Instagram. 

-- Average no. of posts per user = (total no. of posts)/(total no. of users)

select count(id)/(select count(distinct(user_id)) from photos) as avg_no_of_posts_per_user
from photos;

#7. Identify users (potential bots) who have liked every single photo on the site

select username, count(photo_id)
from users u join likes l on u.id = l.user_id
group by username
having count(photo_id) = (select count(id) from photos);	







