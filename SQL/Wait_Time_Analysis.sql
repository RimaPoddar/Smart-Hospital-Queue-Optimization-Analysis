USE Hospital_Project;

SELECT TOP 5 * FROM hospital_data;

--Q6 Average wait time by urgency level

SELECT Urgency_Level , AVG(Total_Wait_Time_min) AS avg_wait_time FROM hospital_data
GROUP BY Urgency_Level
ORDER BY avg_wait_time 

--Q7 High Load vs Normal Load

SELECT Load_Indicator , COUNT(*) AS total_visit FROM hospital_data
GROUP BY Load_Indicator