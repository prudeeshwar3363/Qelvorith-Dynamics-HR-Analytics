# Qelvorith Dynamics — HR Analytics

A portfolio project analyzing employee attrition using **MySQL** and **Google Sheets**. The goal is to turn workforce records into clear metrics, segment comparisons, and practical HR questions.

> **Data notice:** Qelvorith Dynamics is fictional, and the dataset is synthetic. Results are for portfolio practice only; they are not findings about a real company.

## Project at a Glance

- **Records analyzed:** 1,500 employees
- **SQL:** MySQL data checks, aggregation, and segment analysis
- **Dashboard:** Google Sheets KPI cards and charts
- **Core question:** How does attrition differ across workforce segments?

## Dashboard

![Qelvorith Dynamics HR Analytics dashboard](docs/screenshots/hr-dashboard.png)

[Open the Google Sheets dashboard](https://docs.google.com/spreadsheets/d/1iiwNQFZSy5_kdObCsxUcaWEiNjznN6I5_Z2fLnRwKC4/edit?pli=1&gid=1633930731#gid=1633930731)

Dashboard KPIs: total employees, employees who left, employees who stayed, and overall attrition rate. Charts compare attrition by department, overtime, job satisfaction, tenure, employment type, age group, commute distance, training sessions, and performance rating.

## Tools Used

| Tool | Use |
|---|---|
| MySQL | Data validation, calculations, grouping, and attrition analysis |
| Google Sheets | Summary tables, KPI cards, and visual dashboard |
| GitHub | SQL version control and project documentation |

## Key Results

| Metric | Result |
|---|---:|
| Total employees | 1,500 |
| Employees who left | 183 |
| Employees who stayed | 1,317 |
| Overall attrition rate | 12.20% |
| Customer Support attrition | 13.12% |
| Sales attrition | 12.93% |
| Attrition with overtime | 16.56% |
| Attrition without overtime | 10.09% |
| Attrition for 0–2 years at company | 15.75% |
| Contract employee attrition | 13.87% |
| Full-time employee attrition | 11.63% |

All results are descriptive statistics from the synthetic dataset. Segment differences indicate associations, not proof of cause and effect.

## Key Insights

- **Department:** Customer Support has the highest department attrition rate in the dataset at 13.12%, followed by Sales at 12.93%.
- **Overtime:** Attrition is 16.56% among employees marked as working overtime and 10.09% among those not marked as working overtime, a difference of 6.47 percentage points.
- **Job satisfaction:** The attrition rate is 20.12% for satisfaction level 1 versus 7.59% for level 4.
- **Tenure:** Employees with 0–2 years at the company have a 15.75% attrition rate, higher than the 3–5 and 6–10 year groups.
- **Employment type:** Contract employees have a 13.87% attrition rate compared with 11.63% for full-time employees.
- **Salary:** Average monthly salary is ₹50,750.13 among employees who left and ₹52,124.44 among those who stayed. This difference is descriptive and does not establish why employees left.
- **Training and performance:** Attrition rates vary by training sessions and performance rating; the patterns should be investigated alongside other factors rather than interpreted as causal.

## Recommendations to Explore

1. Review onboarding, manager support, and check-ins for employees during their first two years.
2. Examine overtime frequency, workload distribution, and staffing levels before concluding that overtime itself drives attrition.
3. Collect and review feedback from employees with lower job-satisfaction scores.
4. Investigate retention challenges in Customer Support and among contract employees.
5. Use additional data and follow-up analysis to test these hypotheses before adopting policy changes.

## Repository Structure

```text
.
├── data/
│   └── employees.csv
├── docs/
│   ├── data_dictionary.md
│   ├── methodology.md
│   └── screenshots/
│       └── hr-dashboard.png
├── google-sheets/
│   └── README.md
├── sql/
│   ├── 01_data_quality/
│   ├── 02_core_metrics/
│   └── 03_segment_analysis/
├── .gitignore
├── LICENSE_NOTE.md
└── README.md
```

## Reproduce the Analysis

1. Download or clone this repository.
2. Create a MySQL database and import `data/employees.csv` into a table named `employees`.
3. Check the actual imported schema against [the data dictionary](docs/data_dictionary.md). In the working analysis, `MonthlySalaryINR` is an integer/numeric field.
4. Run the SQL files in order: `sql/01_data_quality/`, `sql/02_core_metrics/`, then `sql/03_segment_analysis/`.
5. Compare the SQL outputs with the KPI summaries and charts in the [Google Sheets dashboard](https://docs.google.com/spreadsheets/d/1iiwNQFZSy5_kdObCsxUcaWEiNjznN6I5_Z2fLnRwKC4/edit?pli=1&gid=1633930731#gid=1633930731).

See [Methodology and Reproduction](docs/methodology.md) for the workflow and interpretation rules.

## Data Quality and Limitations

- The current validation script checks row count, distinct employee IDs, null values in selected key fields, column types, and attrition labels. It is not a full audit of every field.
- The dataset is synthetic and does not represent a real employer or employee population.
- The analysis is descriptive and does not demonstrate causality.
- Small segment counts can produce unstable percentages; interpret those groups cautiously.
- The training-session pattern is not monotonic, so more sessions should not automatically be interpreted as lower attrition.
- Recommendations are hypotheses to investigate, not proven interventions or measured savings.

## Future Improvements

- Add comprehensive checks for missing values, duplicate IDs, valid categories, and out-of-range values.
- Add dashboard filters and more explicit segment counts beside rates.
- Extend the analysis with statistical tests or multivariable models where appropriate.
- Add time-based snapshots and validated exit reasons if suitable data becomes available.
