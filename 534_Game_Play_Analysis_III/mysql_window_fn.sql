Select player_id, event_date, 
sum(games_played) OVER(Partition BY player_id order by event_date) AS games_played_so_far
from Activity