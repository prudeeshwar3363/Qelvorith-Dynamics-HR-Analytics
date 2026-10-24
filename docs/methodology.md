# Methodology and Reproduction

## Workflow

1. Import the synthetic CSV into MySQL as `employees`.
2. Verify schema and row counts.
3. Run data-quality checks.
4. Calculate overall attrition.
5. Compare attrition across workforce segments.
6. Build summary tables and charts in Google Sheets.
7. Interpret findings and document limitations.

## Core Metric

Attrition rate:

```text
Attrition Rate (%) = Employees with Attrition = Yes / Total Employees * 100
```

For the provided dataset:

```text
183 / 1500 * 100 = 12.20%
```

## Suggested MySQL Import Workflow

The exact import method depends on your MySQL client and local file permissions. You can use MySQL Workbench's Table Data Import Wizard or `LOAD DATA LOCAL INFILE` if enabled and configured.

After import, check the schema:

```sql
DESCRIBE employees;
SELECT COUNT(*) AS TotalRows FROM employees;
SELECT COUNT(DISTINCT EmployeeID) AS UniqueEmployeeIDs FROM employees;
```

## Interpretation Rules

- Compare both counts and rates.
- State the denominator when reporting a rate.
- Do not describe association as causation.
- Treat small groups cautiously.
- Identify synthetic data as synthetic in the README and portfolio.
- Any ROI example is illustrative unless actual costs and outcomes are supplied.
