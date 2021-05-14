-- Comments in SQL Start with dash-dash --
-- 1
select * from analytics where id = 1880;
-- 2
select id, app_name from analytics where last_updated = '2018-08-01';
-- 3
select category, count(*) from analytics group by category;
-- 4
select app_name, reviews from analytics limit 5;
-- 5
select app_name from analytics where reviews = (
  select max(reviews) from analytics where rating >= 4.8
);
-- 6
select category, avg(rating) as average from analytics group by category order by average;
-- 7 
select app_name, price, rating from analytics where price = 
 ( select max(price) from analytics where rating < 3 );
-- 8
select * from analytics where min_installs < 50 and rating is not null order by rating desc;
-- 9
select app_name from analytics where rating < 3 and reviews > 10000;
-- 10
select * from analytics where price between .10 and 1 order by reviews desc limit 10;
-- 11
select app_name from analytics where last_updated = (
  select min(last_updated) from analytics);
-- 12
select * from analytics where price = (select max(price) from analytics );
-- 13
select sum(reviews) from analytics;
-- 14
select category, count(*) from analytics group by category having count(*) > 300;
-- 15
select app_name, reviews, min_installs, min_installs/reviews from analytics where app_name in (
  select app_name from analytics where min_installs > 100000
);