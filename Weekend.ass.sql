
USE ADONET;

CREATE TABLE Accounts (
    AccountId INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    AccountType VARCHAR(10), -- 'Savings' or 'Checking'
    Balance DECIMAL(18, 2)
);

-- Sample Data
INSERT INTO Accounts (CustomerId, AccountType, Balance) VALUES
(101, 'Savings', 3000.00),
(101, 'Checking', 200.00);

delete from Accounts where CustomerId=101;

select * from Accounts;

CREATE TABLE ChatMessages (
    Id INT IDENTITY PRIMARY KEY,
    Sender NVARCHAR(50),
    Message NVARCHAR(MAX),
    SentAt DATETIME DEFAULT GETDATE()
);


SELECT * FROM ChatMessages ORDER BY SentAt;

delete from ChatMessages ;