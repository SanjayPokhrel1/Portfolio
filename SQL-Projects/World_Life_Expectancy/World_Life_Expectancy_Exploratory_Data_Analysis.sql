# World Life Expectancy Project (Exploratory Data Aanalysis)

SELECT *
FROM world_life_expectancy;

-- All the informatioN from table

SELECT
	Country, 
	MIN(`Life expectancy`), 
    MAX(`Life expectancy`),
    ROUND(MAX(`Life expectancy`)-MIN(`Life expectancy`),1) AS Life_Increase_15_Years
FROM world_life_expectancy
GROUP BY Country
HAVING MIN(`Life expectancy`) <>0
AND MAX(`Life expectancy`) <>0
ORDER BY Life_Increase_15_Years DESC;

-- Life Expectancy Increase Last 15 Years

SELECT Year, ROUND(AVG(`Life expectancy`),2)
FROM world_life_expectancy
WHERE `Life expectancy` <> 0
AND `Life expectancy` <> 0
GROUP BY Year
ORDER BY Year;

-- Average Life Expectancy Each Year

SELECT Country, ROUND(AVG(`Life expectancy`),1) AS Life_Exp , ROUND(AVG(GDP),1) AS GDP
FROM world_life_expectancy
GROUP BY country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC;

-- Correlation/Comparison of Life Expectancy and GDP

SELECT
	SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END )High_GDP_Count,   
    AVG(CASE WHEN GDP >= 1500 THEN `Life expectancy` ELSE NULL END )High_GDP_Life_Expectancy, 
    SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END )Low_GDP_Count,   
    AVG(CASE WHEN GDP <= 1500 THEN `Life expectancy` ELSE NULL END )Low_GDP_Life_Expectancy  
FROM world_life_expectancy;

-- Counted Low And High GDP And The Average in Both Categories

SELECT Status, ROUND(AVG(`Life expectancy`),1)
FROM world_life_expectancy
GROUP BY Status;

SELECT Status, COUNT(DISTINCT Country),ROUND(AVG(`Life expectancy`),1)
FROM world_life_expectancy
GROUP BY Status;

-- Compared Status and Life Expectancy 

SELECT Country, ROUND(AVG(`Life expectancy`),1) AS Life_Exp , ROUND(AVG(BMI),1) AS BMI 
FROM world_life_expectancy
GROUP BY country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI ASC;

-- Correlation/Comparison of Life Expectancy and BMI

SELECT 
	Country, 
    Year, 
    `Life expectancy`, 
    `Adult Mortality`, 
    SUM(`Adult Mortality`) OVER (PARTITION BY Country ORDER BY year) AS Rolling_Total
FROM world_life_expectancy
WHERE Country LIKE '%United States%';

-- Viewed the total adult mortality over the years in United States



