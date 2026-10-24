SELECT
    PerformanceRating,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS EmployeesLeft,
    ROUND(100.0 * SUM(Attrition = 'Yes') / NULLIF(COUNT(*), 0), 2) AS AttritionRatePct
FROM employees
GROUP BY PerformanceRating
ORDER BY PerformanceRating;
