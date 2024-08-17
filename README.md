# Global-COVID-19-Tracking-Queries
SQL queries and views for analyzing COVID-19 vaccination data, including scripts for data visualization and statistical insights.


# COVID-19 Vaccination Insights

This repository contains SQL queries and views designed for analyzing COVID-19 vaccination data. The data is sourced from [Our World in Data](https://ourworldindata.org/covid-cases). The queries and analyses are performed using SQL Server.
## Questions Answered

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

## Getting Started
To use the SQL scripts:

1. **Clone the Repository**:
   git clone https://github.com/muktanpromish/Global-COVID-19-Tracking-Queries.git
