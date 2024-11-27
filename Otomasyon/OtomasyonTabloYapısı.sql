CREATE TABLE Customer (
    Customer_id INT IDENTITY(1,1) PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Review (
    Review_id INT IDENTITY(1,1) PRIMARY KEY,  
    Customer_id INT NOT NULL,               
    Rating INT CHECK (Rating >= 1 AND Rating <= 5), 
    Comments TEXT,                         
    Comment_Date DATE DEFAULT GETDATE(),     
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
);


CREATE TABLE Room (
    Room_id INT PRIMARY KEY,
    Hotel_id INT,
    Room_Type VARCHAR(50),
    Price DECIMAL(10, 2),
    Available BIT,  
);

CREATE TABLE Bill (
    Bill_id INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
);

CREATE TABLE Reservation (
    Reservation_id INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id INT,
    Room_Number INT,
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Room_Number) REFERENCES Room(Room_id)
);

CREATE TABLE Admin (
    Admin_id INT IDENTITY(1,1) PRIMARY KEY,
    Admin_name VARCHAR(100),
    Username VARCHAR(50),
    Password VARCHAR(100)
);
