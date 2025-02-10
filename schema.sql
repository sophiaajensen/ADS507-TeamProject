CREATE DATABASE IF NOT EXISTS healthcare;

CREATE TABLE IF NOT EXISTS heart_failure (
    patient_id INT PRIMARY KEY,
    my_row_id BIGINT,
    age FLOAT,
    anaemia TINYINT(1),
    creatinine_phosphokinase INT,
    diabetes TINYINT(1),
    ejection_fraction INT,
    high_blood_pressure TINYINT(1),
    platelets FLOAT,
    serum_creatinine FLOAT,
    serum_sodium INT,
    sex TINYINT(1),
    smoking TINYINT(1),
    time INT,
    DEATH_EVENT TINYINT(1)
);

CREATE TABLE IF NOT EXISTS patients (
    patient_id INT PRIMARY KEY,
    age FLOAT,
    sex TINYINT(1)
);

CREATE TABLE Predictions (
    prediction_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    predicted_risk_level VARCHAR(50),
    model_used VARCHAR(50),
    prediction_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(patient_id) REFERENCES Patients(patient_id)
);

