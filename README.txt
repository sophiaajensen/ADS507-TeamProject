This project is intended for the University of San Diego Master of Science in Applied Data Science program for the 2025 Spring semester.

Authors:
- Tommy Barron
- Sophia Jensen
- Davood Aein

---------------------
[Insert Title Here]
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

Number of instances: 569 

Number of attributes: 32 (ID, diagnosis, 30 real-valued input features)

Attribute information

1) ID number
2) Diagnosis (M = malignant, B = benign)
3-32)

Ten real-valued features are computed for each cell nucleus:

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
resulting in 30 features.  For instance, field 3 is Mean Radius, field
13 is Radius SE, field 23 is Worst Radius.

All feature values are recoded with four significant digits.

Missing attribute values: none

Class distribution: 357 benign, 212 malignant


---------------------


bc_prognostic

Source Link: https://archive.ics.uci.edu/dataset/15/breast+cancer+wisconsin+original

Additional Information:
Title: Wisconsin Prognostic Breast Cancer (WPBC)

Number of instances: 198

Number of attributes: 34 (ID, outcome, 32 real-valued input features)

Attribute information

1) ID number
2) Outcome (R = recur, N = nonrecur)
3) Time (recurrence time if field 2 = R, disease-free time if 
	field 2	= N)
4-33) Ten real-valued features are computed for each cell nucleus:

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
resulting in 30 features.  For instance, field 4 is Mean Radius, field
14 is Radius SE, field 24 is Worst Radius.

Values for features 4-33 are recoded with four significant digits.

34) Tumor size - diameter of the excised tumor in centimeters
35) Lymph node status - number of positive axillary lymph nodes
observed at time of surgery

Missing attribute values: 
	Lymph node status is missing in 4 cases.

Class distribution: 151 nonrecur, 47 recur


---------------------


heart_disease_[%all tables%]

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
   -- Only 14 used
      -- 1. #3  (age)       
      -- 2. #4  (sex)       
      -- 3. #9  (cp)        
      -- 4. #10 (trestbps)  
      -- 5. #12 (chol)      
      -- 6. #16 (fbs)       
      -- 7. #19 (restecg)   
      -- 8. #32 (thalach)   
      -- 9. #38 (exang)     
      -- 10. #40 (oldpeak)   
      -- 11. #41 (slope)     
      -- 12. #44 (ca)        
      -- 13. #51 (thal)      
      -- 14. #58 (num)       (the predicted attribute)

