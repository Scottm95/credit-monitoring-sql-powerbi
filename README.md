
# Credit Monitoring Dashboard (SQL + Power BI)


## Overview
Power BI dashboard analysing internal credit audit data to monitor credit accuracy, process compliance and appeal outcomes across departments. Built from a SharePoint CSV export, cleaned in SQLite and shaped in Power Query before modelling and KPI creation in Power BI.



## Problem
- Needed visibility of where credits were being applied incorrectly (risk/cost) and which processes/codes drove errors.
- Appeals needed to be monitored to understand overturn rates and recurring failure themes.
- Raw audit exports required cleaning/anonymisation and reshaping before reliable reporting.



## Approach
- **Extract:** SharePoint audit data exported to CSV.
- **Clean (SQLite):** removed unused fields, anonymised employee identifiers, standardised text, converted currency to numeric, and created analysis columns.
- **Shape (Power Query):** text cleanup, filtered blanks, and split multi-reason fields into rows for accurate counting.
- **Report (Power BI/DAX):** built KPI cards and drilldowns for credit value, accuracy %, top codes, failure reasons and appeal outcomes.


## Tools
**SharePoint**
**SQLite**
**Power Query**
**Power BI** 



## Results
- Produced a single dashboard to track credit value and accuracy by department over time.
- Surfaced high-impact credit codes, recurring failure reasons and appeal patterns to support targeted process fixes and QA follow-up.



## Screenshots
![Credit Summary](Credit_Page1.png)  
![Appeals & Failures](Credit_Page2.png)


## Files
- `Credit Monitoring 2025.pbix` – Power BI report (DAX measures + visuals)
- `Credit Monitoring - SQL.sql` – SQL cleaning/transformation steps (SQLite)
- `Credit Monitoring July 25 Cleaned.csv` – cleaned dataset loaded to Power BI
- `Credit_Page1.png` / `Credit_Page2.png` – report screenshots



## Key Insights (Example Only)

The following insights are based on an **unfiltered** view of the full dataset. Actual insights will vary with filtering depending on the date or operation.

- 7.02% of credits were inaccurate
- The majority of appeals have been overturned (69.35%)
- Most common failure reason: 'Credit provided when no credit was due' 

> Use filters (e.g. month, year, operation) to explore specific trends