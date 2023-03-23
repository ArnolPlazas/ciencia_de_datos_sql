-- la cantidad minima, maxima, suma y primedio del campo json
SELECT 
	MIN (
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	MAX (
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	SUM (
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	AVG (
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	)
FROM ordenes;