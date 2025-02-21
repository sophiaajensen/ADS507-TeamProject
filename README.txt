This project is intended for the University of San Diego Master of Science in Applied Data Science program for the 2025 Spring semester.

Authors:
- Tommy Barron
- Sophia Jensen
- Davood Aein

---------------------

Real-Time Risk Monitoring Database for Breast Cancer and Heart Disease

---------------------


Project Details

- MySQL version 8.0
- Hosted on Azure Database for MySQL flexible server
- Preferred comprehensive tool: MySQL Workbench 8.0 CE
- Character Set Server: UTF8MB4


---------------------


Database replication instructions


Option 1: MySQL Workbench

1) Download the latest .sql file from the main branch of the GitHub
2) Open MySQL Workbench
3) Connect to your preferred MySQL server connection (local or network)
4) Once connected to your server, click the "File" tab located at the top
5) Click "Open SQL Script..."
6) Navigate to the .sql file downloaded from step 1
7) Once the file is open, click on the lightning symbol just above the query script to build and populate the database
7a) NOTE: The database name is 'healthcare'. If you already have a database named healthcare, you must either DROP the existing healthcare database or rename this project's database on line 1 of the SQL script
7b) Once you have changed line 1 of the SQL script, you must also change line 2 to the same name changed in line 1
8) Once you have ran the script you must click on the refresh icon located in the Navigator section on the left, in the SCHEMAS section, to the top right of Schemas


Option 2: MySQL Command Line

1) Download the latest .sql file from the main branch of the GitHub
2) Open MySQL Command Line and log in with your credentials
3) Type "source [/path/to/your/database.sql];" without quotation marks and press enter
3a) NOTE: You may simply drag and drop the location of the .sql file from File Explorer, but it may result in quotation marks around the file path. Simply delete the quotation marks before running the line
3b) NOTE: The database name is 'healthcare'. If you already have a database named healthcare, you must either DROP the existing healthcare database or rename this project's database on line 1 of the SQL script
3c) Once you have changed line 1 of the SQL script, you must also change line 2 to the same name changed in line 1
4) To verify if the database import was successful, type "SHOW databases;" without quotation marks and press enter



---------------------


Database pipeline monitoring


To access data pipeline for this project, we recommend utilizing MySQL Workbench's built in performance dashboard as it is versitile and available on all MySQL Workbench installations.

Steps to accessing the monitoring capabilities:

1) Open MySQL and connect to your database instance
2) On the left side, under the "Navigator" section, click on "Administration"
3) Under the "Performance" section, select "Dashboard"

This will bring up the graphical interface for monitoring the data pipeline.

For this project, we utilized this monitoring system to maintain efficient network traffic, SQL statement performance, and how efficient data is being written to the system.

For monitoring basic network traffic, we used "Incoming Network Traffic" and "Outgoing Network Traffic."

In addition to the monitoring system, we utilized the MySQL Workbench Explain feature to understand and improve query performance.


---------------------


Database table information


bc_cell_attributes

Source Link: https://archive.ics.uci.edu/dataset/15/breast+cancer+wisconsin+original

Additional Information:
Title: Wisconsin Breast Cancer Database (January 8, 1991)

Number of Instances: 699 (as of 15 July 1992)

Number of Attributes: 10 plus the class attribute

Attribute Information: (class attribute has been moved to last column)

   #  Attribute                     Domain
   -- -----------------------------------------
   1. Sample code number            id number
   2. Clump Thickness               1 - 10
   3. Uniformity of Cell Size       1 - 10
   4. Uniformity of Cell Shape      1 - 10
   5. Marginal Adhesion             1 - 10
   6. Single Epithelial Cell Size   1 - 10
   7. Bare Nuclei                   1 - 10
   8. Bland Chromatin               1 - 10
   9. Normal Nucleoli               1 - 10
  10. Mitoses                       1 - 10
  11. Class:                        (2 for benign, 4 for malignant)

Missing attribute values: 16

   There are 16 instances in Groups 1 to 6 that contain a single missing 
   (i.e., unavailable) attribute value, now denoted by "?".  

Class distribution:
 
   Benign: 458 (65.5%)
   Malignant: 241 (34.5%)


---------------------


bc_diagnostic

Source Link: https://archive.ics.uci.edu/dataset/15/breast+cancer+wisconsin+original

Additional Information:
Title: Wisconsin Diagnostic Breast Cancer (WDBC)
Title: Wisconsin Prognostic Breast Cancer (WPBC)

Number of instances: 763

Number of attributes: 32 (ID, diagnosis, 30 real-valued input features)

Attribute information

1) Patient ID number
2-31) Ten real-valued features are computed for each cell nucleus:

	a) radius (mean of distances from center to points on the perimeter)
	b) texture (standard deviation of gray-scale values)
	c) perimeter
	d) area
	e) smoothness (local variation in radius lengths)
	f) compactness (perimeter^2 / area - 1.0)
	g) concavity (severity of concave portions of the contour)
	h) concave points (number of concave portions of the contour)
	i) symmetry 
	j) fractal dimension ("coastline approximation" - 1)

Several of the papers listed above contain detailed descriptions of
how these features are computed. 

The mean, standard error, and "worst" or largest (mean of the three
largest values) of these features were computed for each image,
resulting in 30 features.  For instance, field 2 is Mean Radius, field
12 is Radius SE, field 22 is Worst Radius.

32) Class (Diagnostic or Prognostic)
33) Diagnosis (M = malignant, B = benign)
34) Outcome (R = recur, N = nonrecur)
35) Time (recurrence time if field 2 = R, disease-free time if 
	 field 2 = N)

All feature values are recoded with four significant digits.

Class distribution: 357 benign, 212 malignant, 151 nonrecur, 47 recur


---------------------


heart_disease

Source Link: https://archive.ics.uci.edu/dataset/45/heart+disease

Additional Information:
Title: Heart Disease Databases

Number of Instances: 
        Database:    # of instances:
          Cleveland: 303
          Hungarian: 294
        Switzerland: 123
      Long Beach VA: 200

Number of Attributes: 76 (including the predicted attribute)

Attribute Information:
      -- 0. my_row_id (index)
      -- 1. patient_id
      -- 2. #3  (age)       
      -- 3. #4  (sex)       
      -- 4. #9  (chest_pain_type)        
      -- 5. #10 (resting_bp)  
      -- 6. #12 (cholesterol)      
      -- 7. #16 (fasting_blood_sugar)       
      -- 8. #19 (resting_ecg)   
      -- 9. #32 (max_heart_rate)   
      -- 10. #38 (exercise_angina)     
      -- 11. #40 (st_depression)   
      -- 12. #41 (st_slope)     
      -- 13. #44 (num_major_vessels)        
      -- 14. #51 (thalassemia)      
      -- 15. #58 (heart_disease)       (the predicted attribute)
      -- 16. (Source)


---------------------


heart_failure

Source Link: https://archive.ics.uci.edu/dataset/519/heart+failure+clinical+records

Additional Information:
Title: Heart Failue Clinical Records

Number of Instances: 299

Number of Attributes: 14

Attribute Information:
0) my_row_id (index)
1) patient_id
2) age
3) anaemia
4) creatinine_phosphokinase
5) diabetes
6) ejection_fraction
7) high_blood_pressure
8) platelets
9) serum_creatinine
10) serum_sodium
11) sex
12) smoking
13) time
14) DEATH_EVENT


