USE Hospital_Project;

SELECT TOP 5 * FROM hospital_data;

--Q4 Peak Time of Day

SELECT Time_of_Day , COUNT(*) AS total_visits FROM hospital_data
GROUP BY Time_of_Day
ORDER BY count(*) DESC

--Q5 Weekend vs Weekday Traffic

SELECT Day_Type , COUNT(*) AS total_visits FROM hospital_data
GROUP BY Day_Type


