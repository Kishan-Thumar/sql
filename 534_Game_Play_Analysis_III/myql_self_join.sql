Select a.player_id, a.event_date, Sum(b.games_played) as games_played_so_far
from Activity a, Activity b
Where a.player_id = b.player_id and a.event_date >= b.event_date
Group By a.player_id, a.event_date
