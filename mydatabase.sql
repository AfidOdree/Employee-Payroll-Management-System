CREATE TABLE Employee (
FirstName VARCHAR (40),
LastName VARCHAR (40),
EmployeeID INTEGER NOT NULL
DEFAULT (10) 
UNIQUE
PRIMARY KEY AUTOINCREMENT,
DOB DATE (40),
Contact INTEGER,
Address VARCHAR (50),
Email VARCHAR (40),
Gender VARCHAR (20),
Designation VARCHAR (40),
Salary DOUBLE,
Wage DOUBLE,
Jobtype VARCHAR (20),
Joined DATE (40) 
);



CREATE TABLE USERS (
EmployeeID INTEGER NOT NULL
REFERENCES Employee (EmployeeID),
UserName VARCHAR (40) NOT NULL,
Password VARCHAR (40) NOT NULL,
Type VARCHAR (40) NOT NULL
);

CREATE TABLE Allowance (
EmployeeID INTEGER NOT NULL
REFERENCES Employee (EmployeeID) ON DELETE CASCADE
ON UPDATE CASCADE,
Medical DOUBLE,
Conveyance DOUBLE,
Housing DOUBLE,
LeaveTravel DOUBLE,
TotalAllowance DOUBLE
);





CREATE TABLE Bonus (
EmployeeID INTEGER REFERENCES Employee (EmployeeID) ON DELETE CASCADE
ON UPDATE CASCADE,
Overtime DOUBLE,
Overtimepay DOUBLE,
Bonuses DOUBLE,
Reasons VARCHAR (250),
TotalBonus DOUBLE
);

CREATE TABLE Deduction (
EmployeeID INTEGER REFERENCES Employee (EmployeeID) ON DELETE CASCADE
ON UPDATE CASCADE,
LatePenalty DOUBLE,
absence DOUBLE,
otherDeductions DOUBLE,
Reason VARCHAR (200),
TotalDeduction DOUBLE
);

CREATE TABLE Attendance (
EmployeeID INTEGER REFERENCES Employee (EmployeeID),
AttendanceTime TIME,
AttendanceDate DATE,
AttendanceStatus VARCHAR,
TotalPresent INTEGER,
TotalLate INTEGER,
Leave INTEGER,
threshold INTEGER DEFAULT (26) 
);

CREATE TABLE Leave (
EmployeeID INTEGER REFERENCES Employee (EmployeeID),
LeaveDate DATE,
Status VARCHAR
);





CREATE TABLE LeaveNotice (
EmployeeID INTEGER REFERENCES Employee (EmployeeID),
FirstName VARCHAR,
LastName VARCHAR,
Request VARCHAR (200) 
);

CREATE TABLE UpdateRequest (
EmployeeID INTEGER REFERENCES Employee (EmployeeID) ON DELETE CASCADE
ON UPDATE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE
NOT NULL,
FirstName VARCHAR,
LastName VARCHAR,
field VARCHAR (15),
newInfo VARCHAR (20) NOT NULL,
oldInfo VARCHAR (30) NOT NULL,
[Query] VARCHAR (150) 
);
