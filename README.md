# Smart-Hospital-Queue-Optimization-Analysis

**1. Project Objective**

The objective of this project was to analyze hospital patient flow and waiting time data to identify operational bottlenecks, peak load periods, and inefficiencies in hospital service delivery.

The main goal was to generate data-driven insights that could help hospitals:

- reduce patient waiting time,
- optimize staff allocation,
- and improve overall patient satisfaction.

**2. Problem Statement**

Hospitals often face:

- long patient waiting times,
- uneven workload distribution,
- overloaded departments,
- and poor resource utilization.

These issues negatively impact:

- patient experience,
- operational efficiency,
- and hospital performance.

This project aims to solve those issues through data analysis.

**3. Dataset Understanding**

The dataset contains 5000 patient visit records with the following key information:

**Patient Information**
- Visit ID
- Patient ID
**Hospital Information**
- Hospital Name
- Hospital ID
- Region
**Time Metrics**
- Visit Date
- Time of Day
- Time to Registration
- Time to Triage
- Time to Medical Professional
- Total Wait Time
**Operational Metrics**
- Nurse-to-Patient Ratio
- Specialist Availability
- Facility Size
**Patient Metrics**
- Urgency Level
- Patient Outcome
- Patient Satisfaction
 
**4. Data Cleaning & Preparation (Excel)**

Performed extensive cleaning to improve reliability.

**Step 1: Removed duplicates**

Used:

- Visit ID as primary key

Ensured:

- no duplicate patient visits

**Step 2: Standardized date formats**

Corrected:

- inconsistent datetime values

Ensured:

- proper date-time formatting

**Step 3: Cleaned numeric columns**

Validated:

- Total Wait Time
- Registration Time
- Triage Time

Removed:

- blanks
- invalid values
- negative values

**Step 4: Cleaned categorical columns**

Standardized:

- Urgency Level
- Patient Outcome
- Region

Used:

- TRIM
- Find & Replace

**Step 5: Feature Engineering**

Created:

**Day Type**

Using:

=IF(WEEKDAY(A2,2)>5,"Weekend","Weekday")

Purpose:

- compare weekday vs weekend traffic

**Corrected Time of Day**

Detected inconsistency:
Example:

- 8:20 PM labeled as "Late Morning"

Fixed by deriving time from Visit Date.

**Load Indicator**

Created:

- High Load → if wait time > average
- Normal Load → otherwise

Purpose:

identify overload scenarios

**Wait Time Categories**

Grouped into:

- Low
- Medium
- High

Purpose:

- easier segmentation
  
5. SQL Analysis

Imported cleaned dataset into SQL Server.

Performed analytical queries:

**Key SQL questions solved:**

**1** Total number of patients

**2** Average waiting time

**3** Peak time of day

**4** Weekday vs weekend traffic

**5** Hospital-wise average wait time

**6** Urgency-level waiting time

**7** High load vs normal load

**8** Regional patient distribution

**9** Staff availability impact

**10** Satisfaction analysis

Purpose:

- validate business questions using SQL

**6. Dashboard Development (Power BI)**

Built an interactive dashboard containing:

**KPI Cards**
- Total Patients = 5000
- Avg Wait Time = 24.83 min
- Avg Satisfaction = 2.77
- High Load Patients = 2003
- % High Load = 40.06%

**Visualizations**

**1** Patients by Time of Day
**2** Avg Wait Time by Hospital
**3** Load Distribution
**4** Avg Wait by Urgency
**5** Nurse-to-Patient Ratio vs Wait Time
**6** Weekday vs Weekend Traffic

**Filters Added**
- Date
- Region
- Hospital Name
- Urgency Level
- Day Type
- Load Indicator

Purpose:

- make dashboard interactive
  
**7. Key Insights**

**Insight 1: Morning is peak time**
-highest patient load (~2500+)

Meaning:

- congestion occurs early

Recommendation:

- increase morning staffing

**Insight 2: 40% patients are under high load**

Meaning:

- hospital experiences frequent overload

Recommendation:

- better queue management needed

**Insight 3: Springfield has highest wait time**

Meaning:

- possible operational inefficiency

Recommendation:

- review staffing/resources there

**Insight 4: Low urgency patients wait the longest**

Meaning:

- critical patients are prioritized

Recommendation:

- create separate low-priority queue

**Insight 5: Weekdays are much busier**

Meaning:

- traffic concentrated on weekdays

Recommendation:

- redistribute appointments

**Insight 6: Higher nurse ratio impacts wait time**

Meaning:

- staffing directly influences service efficiency

Recommendation:

- optimize nurse deployment

**8. Business Recommendations**

Based on analysis:

- Increase staffing during morning peak hours
- Create separate queue for low urgency patients
- Implement appointment scheduling
- Monitor high-load hospitals in real time
- Improve staff allocation using demand forecasting

**9. Project Outcome**

Expected impact:

- 20–25% reduction in waiting time (estimated)
- improved patient satisfaction
- better operational efficiency
- smarter hospital resource utilization

**10. Conclusion**

This project demonstrates how healthcare data analytics can improve hospital operations through:

- patient flow analysis,
- wait time optimization,
- and evidence-based decision making.

It showcases practical use of:

- Excel for cleaning,
- SQL for analysis,
- Power BI for storytelling.
