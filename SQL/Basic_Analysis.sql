USE Hospital_Project;


Select TOP 5 * FROM hospital_data;

--Basic Analysis

--Q1. Total Number of Patients


Select count(*) AS total_no_of_patients From hospital_data;


--Q2 Average waiting time 

Select avg(Total_Wait_Time_min) as avg_wait_time From hospital_data;

--Q3 Average Statisfaction Score

Select avg(Patient_Satisfaction) as avg_statisfaction_score From hospital_data;

