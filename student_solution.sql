USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    HOD VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Department VALUES
(10, 'Computer Science', 'Ravi'),
(20, 'Mathematics', 'Priya'),
(30, 'Electronics', 'Kumar');

INSERT INTO Student VALUES
(1001, 'Arun', 'Male', 10),
(1002, 'Divya', 'Female', 20),
(1003, 'Karthik', 'Male', 10),
(1004, 'Nisha', 'Female', 30);

INSERT INTO Faculty VALUES
(501, 'Ramesh', 10),
(502, 'Meena', 20),
(503, 'Suresh', 30);

INSERT INTO Course VALUES
(201, 'Database Systems', 4, 10),
(202, 'Data Structures', 3, 10),
(203, 'Mathematics', 4, 20),
(204, 'Electronics', 3, 30);

INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201),
(5, 1004, 204);
