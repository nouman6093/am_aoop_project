database name = "evently"

CREATE TABLE contact_us (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    subject VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Database
CREATE DATABASE EventlyDB;

-- Use the Database
USE EventlyDB;

-- Create Table: plogindetails
CREATE TABLE plogindetails (
    User_Name VARCHAR(50) NOT NULL PRIMARY KEY,
    User_Password VARCHAR(50) NOT NULL,
    ParticipantsName VARCHAR(100)
);

-- Create Table: Event
CREATE TABLE Event (
    EventNo INT NOT NULL PRIMARY KEY,
    EventName VARCHAR(100) NOT NULL,
    CoordinatorName VARCHAR(100),
    CoordinatorNo VARCHAR(15),
    Fee DECIMAL(10,2),
    Venue VARCHAR(100),
    Date DATE
);

-- Create Table: card
CREATE TABLE card (
    ename VARCHAR(100),
    enum INT,
    cardno VARCHAR(20),
    edate DATE,
    cvv INT,
    cname VARCHAR(100)
);
