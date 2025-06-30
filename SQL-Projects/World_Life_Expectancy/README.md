# 🌍 World Life Expectancy Analysis with SQL

## Objective
To explore global life expectancy trends and uncover insights related to health, economic, and regional factors using SQL. This project focuses on data cleaning and exploratory data analysis (EDA) to prepare the dataset for deeper insights.

## 🛠️ Tools Used
- SQL (MySQL)
- 
## 📂 Dataset
The dataset includes country-level data on life expectancy, GDP, population, status (developed/developing), and health indicators such as BMI, alcohol consumption, and immunization rates.

_Source_: [Kaggle – World Life Expectancy Dataset](https://www.kaggle.com/datasets/kumarajarshi/life-expectancy-who)

## 🧹 Data Cleaning Steps
- Removed duplicate records and handled missing values using `CASE WHEN`, `IS NULL`, and `COALESCE`.
- Standardized country names and corrected inconsistent entries.
- Converted data types for numerical analysis (e.g., GDP, BMI).
- Created new columns for regional grouping and year-based filtering.

## 🔍 Exploratory Data Analysis (EDA)
- Analyzed average life expectancy by country, region, and development status.
- Explored correlations between life expectancy and:
  - GDP per capita
  - BMI and adult mortality
- Identified top and bottom 10 countries by life expectancy.
- Tracked global trends from 2000 to 2015.

## 📈 Key Insights
- Developed countries consistently show higher life expectancy, with stronger healthcare indicators.
- GDP and immunization rates have a positive correlation with life expectancy.
- Global life expectancy has steadily increased over the 15-year period.

## 🧠 What I Learned
- Practical data cleaning techniques using SQL.
- Writing modular and readable queries using subqueries.
- Applying aggregate functions and window functions for EDA.
- Translating raw data into actionable insights for public health and policy.
