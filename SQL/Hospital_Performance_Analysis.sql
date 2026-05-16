USE Hospital_Project;

SELECT TOP 5 * FROM hospital_data;

--Q Hospital with highest wait time

SELECT TOP 5 hospital_name , AVG(total_wait_time_min) AS avg_wait
FROM hospital_data
GROUP BY Hospital_Name
ORDER BY AVG(total_wait_time_min) DESC;


--Q Region-wise Patient count

SELECT Region , COUNT(*) AS total_patient
FROM hospital_data
GROUP BY Region
ORDER BY COUNT(*) DESC;




