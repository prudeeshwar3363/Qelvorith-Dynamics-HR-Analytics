SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 years'
        WHEN YearsAtCompany > 10 THEN 'Over 10 years'
        ELSE 'Unknown'
    END AS TenureGroup,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS EmployeesLeft,
    ROUND(100.0 * SUM(Attrition = 'Yes') / NULLIF(COUNT(*), 0), 2) AS AttritionRatePct
FROM employees
GROUP BY TenureGroup
ORDER BY FIELD(TenureGroup, '0-2 years', '3-5 years', '6-10 years', 'Over 10 years', 'Unknown');
