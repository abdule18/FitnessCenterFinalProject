CREATE DATABASE FitnessCenter;
USE FitnessCenter;

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15),
    MembershipType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    PaymentStatus VARCHAR(20)
);

CREATE TABLE Trainers (
    TrainerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100),
    Schedule VARCHAR(100),
    Contact VARCHAR(15)
);

CREATE TABLE Classes (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(100) NOT NULL,
    Schedule VARCHAR(100),
    Instructor VARCHAR(100),
    Capacity INT,
    ClassType VARCHAR(50)
);

CREATE TABLE Equipment (
    EquipmentID INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL,
    Conditions VARCHAR(50),
    Location VARCHAR(100)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    Description VARCHAR(200),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE
);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    ClassID INT,
    Date DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID) ON DELETE CASCADE
);





