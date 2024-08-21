# Global-COVID-19-Tracking-Queries
SQL queries and views for analyzing COVID-19 vaccination data, including scripts for data visualization and statistical insights.


# COVID-19 Vaccination Insights

This repository contains SQL queries and views designed for analyzing COVID-19 vaccination data. The data is sourced from [Our World in Data](https://ourworldindata.org/covid-cases). The queries and analyses are performed using SQL Server.
## Questions Answered < a href ="https://github.com/muktanpromish/SQL_Global-COVID-19-Tracking-Queries/blob/main/covid19_sqlcmd.sql" target="_blank">View SQL queries </a>

1. **What are the COVID-19 case and death statistics?**
   - Retrieves all records from the `CovidDeaths` and `CovidVaccinations` tables.

2. **What is the percentage of deaths among total COVID-19 cases?**
   - Compares total cases to total deaths and calculates the death percentage.

3. **What is the percentage of COVID-19 cases relative to the population?**
   - Compares total cases to the population and calculates the infection percentage.

4. **Which country has the highest percentage of COVID-19 cases relative to its population?**
   - Identifies the country with the highest COVID-19 infection percentage.

5. **Which country has the highest number of COVID-19 deaths?**
   - Lists countries with the highest total number of COVID-19 deaths.

6. **How do death rates vary by continent?**
   - Breaks down COVID-19 deaths by continent.

7. **What is the global death percentage from COVID-19 cases?**
   - Computes the global percentage of COVID-19 deaths out of total cases.

8. **How does the total population compare to the number of vaccinations administered?**
   - Analyzes vaccination data about the population for different locations.

9. **What is the vaccination percentage of the population over time?**
   - Uses a Common Table Expression (CTE) to calculate and track vaccination percentages.

10. **How can we create and utilize temporary tables to analyze vaccination data?**
    - Demonstrates creating and using a temporary table to analyze vaccination data.

## Data Source

The COVID-19 data used for these analyses is sourced from [Our World in Data](https://ourworldindata.org/covid-cases). For more detailed information on the dataset and its methodology, please refer to their [data documentation](https://ourworldindata.org/covid-data).

## Environment

- **Database**: SQL Server

## Datasets

The dataset used for this project is too large to upload directly to GitHub. Instead, it is hosted on 
[Google Drive](https://drive.google.com/file/d/152Z6L8jweM9B-KSfM9aQIVh3PibmE6hK/view?usp=drive_link)).
[Google Drive](https://drive.google.com/file/d/1WPEXjkFe8LYmyIapuRYQrAJDjSol8boZ/view?usp=drive_link)).

### Instructions

1. **Download the Dataset**:
   - Click the link above to download the dataset from above link.

2. **Load the Dataset into SQL Server**:
   - Follow the instructions provided in the repository to load the data into your SQL Server or other data tools.

3. **Run the Queries**:
   - Execute the SQL queries included in this repository to analyze the data.

If you encounter any issues or need further assistance, please refer to the documentation or contact the repository maintainer.



## Key Learnings from Global COVID-19 Tracking Queries

1. **Advanced SQL Querying**:
   - Master data aggregation and summarization with functions like `SUM()` and `MAX()`.
   - Calculate percentages and handle NULL values.

2. **Data Transformation**:
   - Use Common Table Expressions (CTEs) and window functions for complex queries and cumulative metrics.
   - Convert data types for accurate calculations.

3. **Data Integration**:
   - Perform JOIN operations to combine data from multiple tables.
   - Synchronize and manage related data effectively.

4. **Views and Temporary Tables**:
   - Create and utilize SQL views to simplify complex queries.
   - Use temporary tables for intermediate results and performance optimization.

5. **Real-World Data Analysis**:
   - Analyze COVID-19 data, interpret trends, and derive actionable insights.
   - Handle and validate real-world datasets with varying data types.

