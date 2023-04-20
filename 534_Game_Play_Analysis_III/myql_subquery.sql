Select a.player_id, a.event_date, (
     Select SUM(b.games_played) from Activity b 
     Where a.player_id = b.player_id AND a.event_date >= b.event_date
     Group by b.player_id 
 ) as games_played_so_far 
 from Activity a