UPDATE exercises_test e
JOIN functional_movements fm
ON e.movement_id = fm.movement_id
SET e.movement_id = (
	SELECT movement_ID 
    FROM functional_movements 
    WHERE movement = 'Squat'
)
WHERE lower(e.name) LIKE '%squat%';
