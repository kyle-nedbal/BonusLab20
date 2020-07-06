CREATE DATABASE [Class35];

CREATE TABLE dbo.JasonsAmazingTable
(
    JasonsAmazingTableID INT IDENTITY (1, 1) PRIMARY KEY,
    FirstName NVARCHAR(200),
    LastName NVARCHAR (200) NOT NULL
);

ALTER TABLE dbo.JasonsAmazingTable
ADD Birthday DATE;

-- Remove a column
ALTER TABLE dbo.JasonsAmazingTable
DROP LastName;

-- CREATE, ALTER, and DROP are considered...
-- Data Definition Language (DDL)

INSERT dbo.JasonsAmazingTable
(
    FirstName,
    LastName
)
VALUES
(
    'Jessica',
    'McKinneyy'
);

UPDATE dbo.JasonsAmazingTable
SET LastName = 'McKinney'
WHERE LastName = 'McKinneyy';

DELETE FROM dbo.JasonsAmazingTable
WHERE LastName = 'McKinney'

-- INSERT, UPDATE, DELETE, SELECT are considered...
-- Data Manipulation Language (DML)

CREATE TABLE dbo.JasonsOtherAmazingTable
(
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    SomeColumn NVARCHAR(50),
    JasonsAmazingTableID INT FOREIGN KEY REFERENCES dbo.JasonsAmazingTable(JasonsAmazingTableID)
)

