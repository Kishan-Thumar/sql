WITH
cte1 AS (
    Select b.player_id, min(b.event_date) as event_date
    from Activity b
    Group by b.player_id)
SELECT a.player_id, a.device_id FROM Activity as a 
Inner JOIN cte1
WHERE cte1.player_id = a.player_id And cte1.event_date = a.event_date;