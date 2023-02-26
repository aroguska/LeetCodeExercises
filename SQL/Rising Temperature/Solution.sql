SELECT 
	T2.id
FROM 
	Weather T1, 
	Weather T2
WHERE T1.temperature < T2.temperature 
	AND DATEDIFF(T2.recordDate, T1.recordDate)=1;
