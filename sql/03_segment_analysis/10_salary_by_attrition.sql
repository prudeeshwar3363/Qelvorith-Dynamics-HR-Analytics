SELECT
    Attrition,
    COUNT(*) AS EmployeeCount,
    ROUND(AVG(MonthlySalaryINR), 2) AS AverageMonthlySalaryINR,
    MIN(MonthlySalaryINR) AS MinimumMonthlySalaryINR,
    MAX(MonthlySalaryINR) AS MaximumMonthlySalaryINR
FROM employees
GROUP BY Attrition
ORDER BY Attrition;
