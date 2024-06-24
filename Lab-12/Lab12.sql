--Lab12) Prepare a database and also prepare tables and apply relationship between tables as required.

-- Create the BcaPractice database
CREATE DATABASE BcaPratice;

-- Use the BcaPractice database
USE BcaPratice;

-- Create the LOC_Country table
CREATE TABLE LOC_Country (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    CountryCode VARCHAR(10) NOT NULL,
    CountryName VARCHAR(100) NOT NULL
);

-- Create the LOC_State table
CREATE TABLE LOC_State (
    StateID INT IDENTITY(1,1) PRIMARY KEY,
    StateCode VARCHAR(10) NOT NULL,
    StateName VARCHAR(100) NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES LOC_Country(CountryID)
);

-- Create the LOC_City table
CREATE TABLE LOC_City (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    CityCode VARCHAR(10) NOT NULL,
    CityName VARCHAR(100) NOT NULL,
    StateID INT NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (StateID) REFERENCES LOC_State(StateID),
    FOREIGN KEY (CountryID) REFERENCES LOC_Country(CountryID)
);