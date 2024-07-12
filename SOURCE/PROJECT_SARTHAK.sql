CREATE TABLE students(
 
        student_id INT IDENTITY (1,1) PRIMARY KEY,
 
        first_name VARCHAR(20) NOT NULL,
 
        last_name VARCHAR(20) NOT NULL,
 
        DateofBirth DATE,
 
        Address NVARCHAR(100) NOT NULL,
 
        Phone NVARCHAR(50) NOT NULL,
 
        Email NVARCHAR(50) UNIQUE
 
 
);
 
CREATE TABLE course(
 
course_id INT IDENTITY(1,1)  PRIMARY KEY,
 
course_name  NVARCHAR(20)  NOT NULL,
 
Instructor_name  NVARCHAR(50)  NOT NULL
 
);
 
 
CREATE TABLE enrolments (
 
enrolment_id INT NOT NULL IDENTITY (1,1)  PRIMARY KEY,
 
enrolment_date  NVARCHAR(100)  NOT NULL,
 
student_id INT,
 
course_id INT,
 
FOREIGN KEY (student_id) REFERENCES  students(student_id) ON DELETE CASCADE,
 
FOREIGN KEY(course_id) REFERENCES course(course_id) ON DELETE CASCADE
 
);
 
 
Create Table Grade (
 
Grade_id INT IDENTITY (1,1)  PRIMARY KEY,
 
Grade NCHAR(1),
 
Grade_Date DATE NOT NULL,
 
student_id INT,
 
course_id INT,
 
FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
 
FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE CASCADE
 
);
 
Create Table Attendance (
 
attendance_id INT IDENTITY (1,1) PRIMARY KEY,
 
attendance_date DATE NOT NULL,
 
Status NVARCHAR(9) CHECK (Status='Present' or Status='Absent'),
 
student_id INT,
 
Course_id INT,
 
FOREIGN KEY (student_id) REFERENCES  students(student_id) ON DELETE CASCADE,
 
FOREIGN KEY(course_id) REFERENCES course(course_id) ON DELETE CASCADE
 
);
 
Create Table Fees (
 
fee_id INT IDENTITY (1,1) PRIMARY KEY,
 
Amount Decimal (10,2) NOT NULL,
 
Payment_Date DATE NOT NULL,
 
Student_id INT,
 
FOREIGN KEY (Student_id) references Students (Student_id) ON DELETE CASCADE
);
 
INSERT INTO students (first_name, last_name, email, address, phone, DateofBirth) VALUES
 
('Rahul', 'Mohanty', 'rahul.mohanty@example.com', 'Plot no-1226 BBSR', '1123456478','2000-10-15'),
 
('Suraj', 'Mishra', 'suraj.mishra@example.com', 'Plot no-2647 Cuttack', '2589746310','2001-02-16');
 
INSERT INTO course (course_name,instructor_name) VALUES
 
('Mathematics','Simon' ),
 
('History', 'Ankit');
 
INSERT INTO enrolments  (enrolment_date, Student_id, Course_id) VALUES
('2015-09-08', 1, 1),
('2017-07-05', 2, 2);
 
INSERT INTO Grade (Grade_Date, Student_id, Course_id) VALUES
('2018-08-09', 1, 1),
('2021-06-02', 2, 2);
 
INSERT INTO Attendance ( attendance_date, Status, student_id) VALUES
('2024-10-13', 'Present', '1'),
('2024-10-13', 'Absent','1');
 
INSERT INTO fees (Amount, Payment_Date, student_id) VALUES
(20000.00, '2004-03-12', 2),
(10000.00, '2005-05-13', 1);
 
SELECT * FROM students;
SELECT * FROM course;
SELECT * FROM enrolments; 
SELECT * FROM grade;
SELECT * FROM attendance;


