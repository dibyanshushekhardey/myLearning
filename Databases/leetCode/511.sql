/*
Write an SQL query to report the first login date for each player.
Return the result table in any order.
*/

# Write your MySQL query statement below
select player_id, min(event_date) as first_login
from Activity 
group by player_id;
