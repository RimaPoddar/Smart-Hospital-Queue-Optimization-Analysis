USE Hospital_Project;

SELECT TOP 5 * FROM hospital_data;

-- Q. Correlation Between Wait Time & Satisfaction\


SELECT 
AVG(Total_Wait_Time_min) AS Avg_Wait,
AVG(Patient_Satisfaction) AS Avg_Satisfaction
FROM hospital_data
