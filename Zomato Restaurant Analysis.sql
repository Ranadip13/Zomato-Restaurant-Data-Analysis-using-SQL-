-- -------------- Zomato Case Study --------------------
create database Zomato_Resturant;

use Zomato_Resturant;

-- Business Questions: --
/* 1) Help Zomato in identifying the cities with poor Restaurant ratings */
select city, round(avg(Rating),1) as AvgRating
from zomato
group by city
having AvgRating < 2.5; -- we can set the value of AvgRating as per business needs

/* 2)Enlist most affordable and highly rated restaurants city wise. */
select city, RestaurantID, Res_identify, Rating, Average_Cost_for_two
from (select city, RestaurantID, Res_identify, Rating, Average_Cost_for_two,
rank() over (partition by city order by Rating desc, Average_Cost_for_two) as rnk
from zomato) as temp
where rnk = 1;

/* 3)Help Zomato in identifying the restaurants with poor offline services ??????*/
select RestaurantID, Res_identify, Has_Table_booking, Has_Online_delivery, Votes, Rating
from zomato
where Has_Table_booking = "yes" and Has_Online_delivery = "no" 
		and Rating < 2.5 -- we can set the value of AvgRating as per business needs
order by Rating;

/* 4)Help zomato in identifying those cities which have atleast 3 restaurants with ratings >= 4.9
  In case there are two cities with the same result, sort them in alphabetical order.*/
SELECT city,
       count(restaurantid) as noOfRestaurants
FROM zomato
WHERE rating >= 4.9
GROUP BY city
having count(restaurantid) >=3
ORDER BY NoOfRestaurants DESC, city ASC;

/* 5) What are the top 5 countries with most restaurants linked with Zomato? */
select Country, count(*) TotalRestaurants
from zomato INNER JOIN CountryTable ON zomato.countrycode = CountryTable.CountryCode
group by CountryTable.Country
order by 2 desc
limit 5;

/* 6) Group the restaurants basis the average cost for two into: 
Luxurious Expensive, Very Expensive, Expensive, High, Medium High, Average. 
Then, find the number of restaurants in each category. 
*/
with tempdf as(
				select RestaurantID,
				case
					when Average_Cost_for_two between 0 and 1000 then "Average"
					when Average_Cost_for_two between 1001 and 5000 then  "Medium High"
					when Average_Cost_for_two between 5001 and 10000 then "High"
					when Average_Cost_for_two between 10001 and 50000 then "Expensive"
					when Average_Cost_for_two between 50001 and 100000 then "Very Expensive"
					else "Luxurious Expensive"
				end as Status
				from zomato)

select Status, count(*) as `Number of Resturant`
from tempdf
group by Status
order by 2 desc;

/* 7) List the two top 5 restaurants with highest rating with maximum votes. */
select RestaurantID, Res_identify, Rating, Votes
from zomato
order by Rating desc, Votes desc
limit 5;

/* 8) If someone is looking for a restaurant in kolkata which provides online 
delivery. Help him choose the best restaurant */
select RestaurantID, Res_identify, City, Has_Online_delivery, Rating, Average_Cost_for_two
from zomato
where City = "Kolkata" and Has_Online_delivery = "yes"
order by Rating desc, Average_Cost_for_two asc
limit 1;  -- For more suggestions we can set the limit value more than 1

/* 9) Help someone in finding the best rated Restaurant for Pizza in New Delhi. */
select  RestaurantID, Res_identify, City, Cuisines, Rating
from zomato
where Cuisines like "%pizza%" And city = "New delhi"
order by Rating desc
limit 1;