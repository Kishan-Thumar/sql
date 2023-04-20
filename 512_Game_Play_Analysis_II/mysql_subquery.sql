Select a.player_id, a.device_id
From
Activity a
Where (a.player_id, a.event_date) in
(
  Select b.player_id, min(b.event_date)
  from Activity b
  Group by b.player_id
)
