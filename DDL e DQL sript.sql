create database studentburnout;
go
use studentburnout;
go


create table Department(
departmentID INT PRIMARY KEY IDENTITY(1,1),
departmentName VARCHAR(100) NOT NULL
)

create table Student(
studentID INT PRIMARY KEY IDENTITY(1,1),
name VARCHAR(100) NOT NULL,
lastName VARCHAR(100) NOT NULL,
dateOfBirth DATE,
gender VARCHAR(5) NOT NULL CHECK (gender IN ('F', 'M', 'Other'))
)

CREATE TABLE AcademicPath (
pathID INT IDENTITY(1,1) PRIMARY KEY,
studentID INT NOT NULL,
departmentID INT NOT NULL,
acamedic_year VARCHAR(9) NOT NULL,
yearOfStudy VARCHAR(25) NOT NULL CHECK (yearOfStudy IN ('1° year', '2° year', '3° year','4° year')),
attendance_perc DECIMAL(5,2),
FOREIGN KEY (studentID) REFERENCES Student(studentID) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (DepartmentID) REFERENCES Department(departmentID) ON UPDATE CASCADE
);

CREATE TABLE Grade(
gradeID INT PRIMARY KEY IDENTITY(1,1),
subject_name VARCHAR(100) NOT NULL,
grade DECIMAL(3,1) NOT NULL,
studentID INT NOT NULL,
FOREIGN KEY (studentID) REFERENCES Student(studentID) ON DELETE CASCADE ON UPDATE CASCADE
)


CREATE TABLE LifeStyle(
lifeStyleID INT PRIMARY KEY IDENTITY(1,1),
studentID INT,
studyHoursDay DECIMAL(3,1),
sleepHours DECIMAL(3,1),
exercise_freq_week DECIMAL(3,1),
partTimeJob VARCHAR(3) CHECK (partTimeJob IN ('Yes', 'No')),
FOREIGN KEY (studentID) REFERENCES Student(studentID) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE Support(
supportID INT PRIMARY KEY IDENTITY(1,1),
studentID INT,
familyIncomeBracket VARCHAR(25) CHECK (familyIncomeBracket IN ('Low', 'Medium', 'High')),
counselingAccess VARCHAR(3) CHECK (counselingAccess IN ('Yes', 'No')),
FOREIGN KEY (studentID) REFERENCES Student(studentID) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE Risk(
riskID INT PRIMARY KEY IDENTITY(1,1),
studentID INT,
stressLlevel INT CHECK (stressLlevel BETWEEN 1 AND 10),
burnoutLevel VARCHAR(25) CHECK (burnoutLevel IN ('Low', 'Medium', 'High')),
dropoutRisk VARCHAR(3) CHECK (dropoutRisk IN ('Yes', 'No')),
FOREIGN KEY (studentID) REFERENCES Student(studentID) ON DELETE CASCADE ON UPDATE CASCADE
)


select c.departmentName, b.name, b.lastName, a.acamedic_year, a.yearOfStudy, d.burnoutLevel  from AcademicPath a
inner join Student b on b.studentID = a.studentID
inner join Department c on a.departmentID = c.departmentID
inner join Risk d on d.studentID = b.studentID
order by yearOfStudy

select c.departmentName, b.name, b.lastName, a.acamedic_year, a.yearOfStudy 
from AcademicPath a
inner join Student b on b.studentID = a.studentID
inner join Department c on a.departmentID = c.departmentID
inner join Risk d on d.studentID = b.studentID
where d.burnoutLevel ='High'
order by yearOfStudy

select c.departmentName, b.name, b.lastName, a.acamedic_year, a.yearOfStudy 
from AcademicPath a
inner join Student b on b.studentID = a.studentID
inner join Department c on a.departmentID = c.departmentID
inner join Risk d on d.studentID = b.studentID
where d.burnoutLevel ='Medium'
order by yearOfStudy


select count(distinct a.departmentID) as n_burnout_alto
from AcademicPath a
--inner join Student b on b.studentID = a.studentID
inner join Department c on a.departmentID = c.departmentID
inner join Risk d on d.studentID = a.studentID
where d.burnoutLevel ='High';
--group by c.departmentName


select c.departmentName, a.yearOfStudy, b.gender, d.burnoutLevel, count(*) as n_studenti
from AcademicPath a
inner join Student b on b.studentID = a.studentID
inner join Department c on a.departmentID = c.departmentID
inner join Risk d on d.studentID = a.studentID
group by c.departmentName, a.yearOfStudy, b.gender, d.burnoutLevel
order by  c.departmentName, a.yearOfStudy, b.gender, d.burnoutLevel