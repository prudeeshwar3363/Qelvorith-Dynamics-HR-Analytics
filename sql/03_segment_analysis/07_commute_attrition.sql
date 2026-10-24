SELECT
    CASE
        WHEN CommuteDistanceKM BETWEEN 0 AND 5 THEN '0-5 km'
        WHEN CommuteDistanceKM BETWEEN 6 AND 15 THEN '6-15 km'
        WHEN CommuteDistanceKM BETWEEN 16 AND 30 THEN '16-30 km'
        WHEN CommuteDistanceKM > 30 THEN 'Over 30 km'
        ELSE 'Unknown'
    END AS CommuteGroup,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS EmployeesLeft,
    ROUND(100.0 * SUM(Attrition = 'Yes') / NULLIF(COUNT(*), 0), 2) AS AttritionRatePct
FROM employees
GROUP BY CommuteGroup
ORDER BY FIELD(CommuteGroup, '0-5 km', '6-15 km', '16-30 km', 'Over 30 km', 'Unknown');
