CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    Address VARCHAR(255) NOT NULL
);

CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    Drug VARCHAR(255) NOT NULL,
    Date DATE NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    Doctor VARCHAR(255) NOT NULL,
    Secretary VARCHAR(255) NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);