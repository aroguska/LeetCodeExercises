SELECT DISTINCT T1.id,
CASE 
WHEN T1.p_id IS NULL THEN 'Root'
WHEN T1.p_id IS NOT NULL AND T2.p_id IS NOT NULL THEN 'Inner'
WHEN T2.p_id IS NULL THEN 'Leaf'
END AS 'Type'
FROM Tree T1 
LEFT JOIN Tree T2 ON T1.id=T2.p_id;