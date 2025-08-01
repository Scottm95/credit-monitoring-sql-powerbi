
# Credit Monitoring Dashboard (SQL + Power BI)


## Project Overview
This project analyses internal credit audits to assess process compliance, identify incorrect credit handling and monitor appeal trends. The goal was to clean and transform workplace data and present key findings through an interactive Power BI dashboard.




## Tools Used
**SharePoint** - Original data source (CSV Export)
**SQLite** - Initial data cleaning + transformation
**Power Query** - Additional transformations and column handling
**Power BI** - Data visualisations and analysis using DAX measures


## Data Flow Overview
**Sharepoint** - Credit audit data exported as CSV
**SQLite** - Cleaned and transformed raw data (text formatting, anonymisation, numeric conversion, column creation)
**Power Query** - Further transformations (text cleanup, row splitting, blanks filtering)
**Power BI** - Visualised insights using filters, charts, and custom DAX measures


## Data Cleaning (SQL)
- removed unnecessary columns
- anonymised employee names
- standardised text fields
- converted currency fields to numeric format
- created additional columns for analysis

> All SQL queries are documented in 'Credit Monitoring - SQL.sql'


## Power Query Steps
Additional data shaping before loading to visuals:
- Cleaned bracketed text fields
- Split multi-reason columns (e.g. failure reasons) into separate rows
- Removed quotation marks and unwanted characters from text fields
- Filtered out blanks/unnecessary rows
- Standardised text formats for consistency


## Power BI Visuals

Page 1 - Credit Summary

### KPI Cards:
- Total Credit Given
- Credit That *Should Have* Been Given
- Loss Amount (difference)
- % Incorrect Credit Given

### Charts + Tables:
- **Credit by Department** - Line graph showing total credit amount trends
- **Credit Accuracy by Department** - 100% stacked bar chart (Yes/No)
- **Top 5 Credit Codes** - Line chart
- **Credit Rule Compliance** - Donut Chart


Page 2 - Appeals & Failures

- **Incorrect Credit Codes** - Clustered column chart (Top misused codes)
- **Failure Reasons** - Matrix with split failure reasons and totals
- **Appeal Breakdown** - Pie chart with appeal reasons
- **Appeal Metrics** - Cards showing:
- % of Audits Appealed
- % Overturned
- % Rejected
- **Bar Chart** - Appeals by Department

## Files Included

- 'Credit Monitoring 2025.pbix' - Power BI dashboard with all visuals and DAX measures
- 'Credit Monitoring - SQL.sql' - SQL queries used for data cleaning in SQLite
- 'Credit Monitoring July 25 Cleaned.csv' - Final cleaned dataset imported into Power BI
- 'Credit_Page1.png' - Screenshot of the main dashboard page
- 'Credit_Page2.png' - Screenshot of the appeals/errors page
- 'Credit_Monitoring_2025.pdf' - PDF copy of the Power BI dashboard
- README.md' - Project overview and documentation



## Notes
- All cleaning steps were based on real-world QA data
- Focus was placed on real impact: identifying over/undercompensation, failed processes, and appeal handling
- Dashboard layout is designed to highlight key insights at a glance


## Explore the Data

The dashboard is fully interactive - use the filters to:

- Monitor trends over time (year/month)
- Compare credit accuracy by department
- Identify the most common credit codes used (and misused)
- Explore top failure reasons and appeal outcomes


## Key Insights (Example Only)

The following insights are based on an **unfiltered** view of the full dataset. Actual insights will vary with filtering depending on the date or operation.

- 7.02% of credits were inaccurate
- The majority of appeals have been overturned (69.35%)
- Most common failure reason: 'Credit provided when no credit was due' 

> Use filters (e.g. month, year, operation) to explore specific trends
