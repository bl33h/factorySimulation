--- Copyright (C), 2023-2024, Sara Echeverria (bl33h)
    --  @author Sara Echeverria
    --  FileName: factorySimulationQueries
    --  @version: I
    --  Creation: 08/03/2023
    --  Last modification: 09/03/2023

--- Query 1 ---
SELECT AVG(time_of_execution) as execution_average
FROM norms
	JOIN operation ON norms.operation = operation.operation_code
	JOIN pieces ON operation.piece = pieces.piece_code
		WHERE pieces.piece_name = 'tornillos' AND pieces.weight = 10;
	
--- Query 2 ---
SELECT worker.worker_code, worker.worker_name, COUNT(norms.norm_code) as norms_quantity
FROM worker
	LEFT JOIN norms ON worker.worker_code = norms.worker
		GROUP BY worker.worker_code, worker.worker_name;

--- Query 3 ---
SELECT pieces.piece_name, COUNT(DISTINCT operation.piece_equipment) AS equipments_num
FROM pieces
	INNER JOIN operation ON pieces.piece_code = operation.piece
		GROUP BY pieces.piece_name
		ORDER BY equipments_num desc
LIMIT 1;