USE Hospital_Project;

SELECT TOP 5 * FROM hospital_data;

--Q.Effect of Specialist Availability on Wait Time

SELECT Specialist_Availability ,AVG(Total_Wait_Time_min) AS avg_Wait_time 
FROM hospital_data
GROUP BY Specialist_Availability;

--Q.Nurse-to-sPatient Ratio Impact

SELECT Nurse_to_patient_ratio , AVG(Patient_Satisfaction) AS avg_satisfaction
FROM hospital_data
GROUP BY Nurse_to_patient_ratio

