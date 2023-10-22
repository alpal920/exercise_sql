UPDATE exercises_test e
SET e.movement_id = (
	SELECT movement_ID 
    FROM functional_movements 
    WHERE movement = 'Squat'
)
WHERE lower(e.name) LIKE '%squat%';
