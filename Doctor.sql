-- Create Doctor table
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(255) NOT NULL,
    SecretaryName VARCHAR(255) NOT NULL
);

-- Create Patient table
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(255) NOT NULL,
    PatientDOB DATE NOT NULL,
    PatientAddress VARCHAR(255) NOT NULL
);

-- Create Prescription table
CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY,
    Drug VARCHAR(255) NOT NULL,
    DatePrescribed DATE NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    DoctorID INT,
    SecretaryName VARCHAR(255) NOT NULL,
    PatientID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
