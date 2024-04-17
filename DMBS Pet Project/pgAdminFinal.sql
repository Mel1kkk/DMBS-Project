CREATE TABLE Students (
    student_id VARCHAR(9) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
	class_year VARCHAR(50),
	major VARCHAR(50),
	member_of VARCHAR(10) REFERENCES StudentGroups(group_id),
    gender VARCHAR(8),
	ethnicity VARCHAR(50),
    nationality VARCHAR(50)
);


INSERT INTO Students (student_id, first_name, last_name, class_year, major, member_of, gender, ethnicity, nationality)
VALUES
    ('220103001', 'Marat', 'Sultanov', 'Freshman', 'Informational Systems', 'SG001', 'Male', 'Asian', 'Kazakh'),
    ('220101002', 'Arman', 'Nurmakhanov', 'Freshman', 'Math Science', 'SG001', 'Male','Asian', 'Kazakh'),
    ('220105003', 'Aliya', 'Bekzhanova', 'Freshman', 'Computer Science', 'SG003', 'Female', 'Asian', 'Kazakh'),
    ('220103004', 'Alima', 'Abdulova', 'Sophomores', 'Informational Systems', 'SG004', 'Female', 'Asian', 'Kazakh'),
    ('220103005', 'Alikhan', 'Zhakupov', 'Sophomores', 'Informational Systems', 'SG005', 'Male', 'Asian', 'Kazakh'),
    ('220105006', 'Aruzhan', 'Kenzhebekova', 'Sophomores', 'Computer Science', 'SG006', 'Female', 'Asian', 'Kazakh'),
    ('220101007', 'Maral', 'Sadykova', 'Junior', 'Math Science', 'SG007', 'Female', 'Asian', 'Kazakh'),
    ('220101008', 'Almas', 'Zholdasov', 'Junior', 'Math Science', 'SG008', 'Male', 'Asian', 'Kazakh'),
    ('220103009', 'Aigerim', 'Kudaibergenova', 'Junior', 'Informational Systems', 'SG009', 'Female', 'Asian', 'Kazakh'),
    ('220103010', 'Nurlan', 'Kozhaev', 'Senior', 'Informational Systems', 'SG010', 'Male', 'Asian', 'Kazakh'),
    ('220105011', 'Aizhan', 'Aubakirova', 'Senior', 'Computer Science', 'SG011', 'Female', 'Asian', 'Kazakh'),
    ('220101012', 'Bekzat', 'Zhanabayev', 'Senior', 'Math Science', 'SG012', 'Male', 'Asian', 'Kazakh'),
    ('220101013', 'Karlygash', 'Sagindykova', 'Senior', 'Math Science', 'SG013', 'Female', 'Asian', 'Kazakh'),
    ('220103014', 'Daulet', 'Kazbekov', 'Freshman', 'Informational Systems', 'SG014', 'Male', 'Asian', 'Kazakh'),
    ('220103015', 'Gulnaz', 'Akhanova', 'Junior', 'Informational Systems', 'SG015', 'Female', 'Asian', 'Kazakh'),
	('210110016', 'John', 'Don', 'Sophomores', 'Social sciences and history', 'SG015', 'Male', 'North American', 'American'),
    ('210110017', 'Emily', 'Ashem', 'Sophomores', 'Social sciences and history', 'SG015', 'Female', 'North American', 'American'),
	('210111018', 'Yuki', 'Uzumaki', 'Sophomores', 'Business', 'SG014', 'Female', 'Asian', 'Japanese'),
	('210111019', 'Dmitri', 'Petrov', 'Sophomores', 'Business', 'SG001', 'Male', 'Asian', 'Japanese'),
	('200112020', 'Alex', 'Larov', 'Junior', 'Engineering', 'SG001', 'Male', 'European', 'British'),
	('190112021', 'Fernando', 'Aliba', 'Senior', 'Engineering', 'SG001', 'Male', 'European', 'Spanish');
	
SELECT * FROM Students


-- 2

CREATE TABLE StudentContacts (
    contact_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);


INSERT INTO StudentContacts (contact_id, student_id, email, phone_number, address)
VALUES
    ('CON01', '220103001', '220103001@stu.sdu.edu.kz', '+7 701 123 4567', '123 Abay street, Almaty'),
    ('CON02', '220101002', '220101002@stu.sdu.edu.kz', '+7 702 234 5678', '456 Baytursynov street, Astana'),
    ('CON03', '220105003', '220105003@stu.sdu.edu.kz', '+7 701 345 6789', '789 Tole bi street, Karaganda'),
    ('CON04', '220103004', '220103004@stu.sdu.edu.kz', '+7 702 456 7890', '101 Zhetoksan street, Shymkent'),
    ('CON05', '220103005', '220103005@stu.sdu.edu.kz', '+7 701 567 8901', '202 Mangilik Yel street, Pavlodar'),
    ('CON06', '220105006', '220105006@stu.sdu.edu.kz', '+7 702 678 9012', '303 Zhas Adil street, Taraz'),
    ('CON07', '220101007', '220101007@stu.sdu.edu.kz', '+7 701 789 0123', '404 Sultan Batyr street, Kokshetau'),
    ('CON08', '220101008', '220101008@stu.sdu.edu.kz', '+7 702 890 1234', '505 Zhanaozen street, Atyrau'),
    ('CON09', '220103009', '220103009@stu.sdu.edu.kz', '+7 701 987 6543', '606 Shalkar street, Uralsk'),
    ('CON10', '220103010', '220103010@stu.sdu.edu.kz', '+7 702 876 5432', '707 Bayqongyr street, Temirtau'),
    ('CON11', '220105011', '220105011@stu.sdu.edu.kz', '+7 701 765 4321', '808 Karagandy street, Karagandy'),
    ('CON12', '220101012', '220101012@stu.sdu.edu.kz', '+7 702 654 3210', '909 Kostanay street, Kostanay'),
    ('CON13', '220101013', '220101013@stu.sdu.edu.kz', '+7 701 543 2109', '100 Nur-Sultan street, Nur-Sultan'),
    ('CON14', '220103014', '220103014@stu.sdu.edu.kz', '+7 702 432 1098', '111 Oral street, Oral'),
    ('CON15', '220103015', '220103015@stu.sdu.edu.kz', '+7 701 321 0987', '122 Aktau street, Aktau');

SELECT * FROM StudentContacts

-- 3

CREATE TABLE Admissions (
    admission_id VARCHAR(5) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
    admission_date DATE,
    admission_type VARCHAR(50),
    admission_status VARCHAR(50),
    admission_score INT
);


INSERT INTO Admissions (admission_id, student_id, admission_date, admission_type, admission_status, admission_score)
VALUES
    ('ADM01', '220103001', '2022-08-01', 'Bachelor', 'Confirmed', 104),
    ('ADM02', '220101002', '2022-08-02', 'Master', 'Confirmed', 96),
    ('ADM03', '220105003', '2022-08-03', 'Bachelor', 'Confirmed', 116),
    ('ADM04', '220103004', '2022-08-04', 'Bachelor', 'Confirmed', 121),
    ('ADM05', '220103005', '2022-08-05', 'Bachelor', 'Confirmed', 109),
    ('ADM06', '220105006', '2022-08-06', 'Bachelor', 'Confirmed', 108),
    ('ADM07', '220101007', '2022-08-07', 'Master', 'Confirmed', 91),
    ('ADM08', '220101008', '2022-08-08', 'Master', 'Confirmed', 93),
    ('ADM09', '220103009', '2022-08-09', 'Bachelor', 'Confirmed', 130),
    ('ADM10', '220103010', '2022-08-10', 'Bachelor', 'Confirmed', 139),
    ('ADM11', '220105011', '2022-08-11', 'Bachelor', 'Confirmed', 140),
    ('ADM12', '220101012', '2022-08-12', 'Master', 'Confirmed', 99),
    ('ADM13', '220101013', '2022-08-13', 'Master', 'Confirmed', 102),
    ('ADM14', '220103014', '2022-08-14', 'Bachelor', 'Confirmed', 126),
    ('ADM15', '220103015', '2022-08-15', 'Bachelor', 'Confirmed', 105);

SELECT * FROM Admissions

-- 4

CREATE TABLE Enrollments (
    enrollment_id VARCHAR(12) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
    course_name VARCHAR(50) REFERENCES Courses(course_name),
	registered_students INT,
    enrollment_date DATE
);


INSERT INTO Enrollments (enrollment_id, student_id, course_name, registered_students, enrollment_date)
VALUES
    ('EN203001', '220103001', 'MATH151', 100, '2023-01-10'),
    ('EN201002', '220101002', 'Physics202', 90, '2023-01-12'),
    ('EN205003', '220105003', 'Chemistry150', 95, '2023-01-15'),
    ('EN203004', '220103004', 'HIST101', 85, '2023-02-01'),
    ('EN203005', '220103005', 'Literature201', 80, '2023-02-05'),
    ('EN205006', '220105006', 'CSS155', 90, '2023-02-10'),
    ('EN201007', '220101007', 'BIO200', 120, '2023-02-15'),
    ('EN201008', '220101008', 'MATH151', 200, '2023-03-01'),
    ('EN203009', '220103009', 'Economics101', 100, '2023-03-05'),
    ('EN203010', '220103010', 'Physics202', 70, '2023-03-10'),
    ('EN205011', '220105011', 'HIST101', 50, '2023-03-15'),
    ('EN201012', '220101012', 'Sociology150', 150, '2023-04-01'),
    ('EN201013', '220101013', 'ENVI159', 140, '2023-04-05'),
    ('EN203014', '220103014', 'ArtHistory201', 120, '2023-04-10'),
    ('EN203015', '220103015', 'Music101', 50, '2023-04-15'),
    ('EN205016', '220103001', 'CSS155', 80, '2023-04-20'),
    ('EN203017', '220101002', 'Economics101', 110, '2023-04-25'),
    ('EN203018', '220105003', 'ArtHistory201', 60, '2023-05-01'),
    ('EN205019', '220103004', 'Literature201', 75, '2023-05-05'),
    ('EN205020', '220103005', 'Physics202', 90, '2023-05-10'),
    ('EN201021', '220105006', 'ENVI159', 130, '2023-05-15'),
    ('EN201022', '220103009', 'MATH151', 180, '2023-05-20'),
    ('EN203023', '220105006', 'BIO200', 100, '2023-05-25'),
    ('EN205024', '220101007', 'Sociology150', 110, '2023-06-01'),
    ('EN201025', '220105011', 'Chemistry150', 95, '2023-06-05'),	
    ('EN205026', '220103001', 'Physics202', 90, '2023-06-10'),
    ('EN203027', '220101002', 'Literature201', 80, '2023-06-15'),
    ('EN203028', '220105003', 'MATH151', 100, '2023-06-20');	
	
SELECT * FROM Enrollments	

-- 5

CREATE TABLE Transcripts (
    transcript_id VARCHAR(6),
    student_id VARCHAR(9) REFERENCES Students(student_id),
    course_name VARCHAR(50) REFERENCES Courses(course_name),
	isPrerequisites BOOLEAN,
	prerequisites_id VARCHAR(25),
    NumericGrade DECIMAL(5, 2), 
    LetterGrade CHAR(2),
    gpa_for_course DECIMAL(3, 2)
);


INSERT INTO Transcripts (transcript_id, student_id, course_name, isPrerequisites, prerequisites_id, NumericGrade, LetterGrade, gpa_for_course) VALUES
('TR001', '220103001', 'MATH151', 'f', 'None', 85, 'B+', 3.33),
('TR001', '220103001', 'CSS155', 'f', 'None', 90, 'A-', 3.67),
('TR001', '220103001', 'LAN261', 'f', 'None', 95, 'A', 4),
('TR001', '220103001', 'MATH152', 't', 'prM151', 91, 'A-', 3.67),
('TR001', '220103001', 'CSS156', 't', 'prCS155', 93, 'A-', 3.67),
('TR002', '220101002', 'MATH151', 'f', 'None', 49, 'F', 0),
('TR002', '220101002', 'CSS155', 'f', 'None', 75, 'B-', 2.67),
('TR002', '220101002', 'LAN261', 'f', 'None', 65, 'C', 2),
('TR002', '220101002', 'MATH152', 't', 'prM151', 0, NULL , 0),
('TR002', '220101002', 'CSS156', 't', 'prCS155', 70, 'C+', 2.33),
('TR003', '220105003', 'MATH151', 'f', 'None', 50, 'D', 1),
('TR003', '220105003', 'CSS155', 'f', 'None', 56, 'D+', 1.33),
('TR003', '220105003', 'LAN261', 'f', 'None', 78, 'B-', 2.67),
('TR003', '220105003', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR003', '220105003', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR004', '220103004', 'MATH151', 'f', 'None', 100, 'A', 4),
('TR004', '220103004', 'CSS155', 'f', 'None', 86, 'B+', 3.33),
('TR004', '220103004', 'LAN261', 'f', 'None', 92, 'A-', 3.67),
('TR004', '220103004', 'MATH152', 't', 'prM151', 92, 'A-', 3.67),
('TR004', '220103004', 'CSS156', 't', 'prCS155', 94, 'A-', 3.67),
('TR005', '220103005', 'MATH151', 'f', 'None', 51, 'D', 1),
('TR005', '220103005', 'CSS155', 'f', 'None', 53, 'D', 1),
('TR005', '220103005', 'LAN261', 'f', 'None', 57, 'D+', 1.33),
('TR005', '220103005', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR005', '220103005', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR006', '220105006', 'MATH151', 'f', 'None', 77, 'B-', 2.67),
('TR006', '220105006', 'CSS155', 'f', 'None', 93, 'A-', 3.67),
('TR006', '220105006', 'LAN261', 'f', 'None', 95, 'A', 4),
('TR006', '220105006', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR006', '220105006', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR007', '220101007', 'MATH151', 'f', 'None', 80, 'B', 3),
('TR007', '220101007', 'CSS155', 'f', 'None', 79, 'B-', 2.67),
('TR007', '220101007', 'LAN261', 'f', 'None', 70, 'C+', 2.33),
('TR007', '220101007', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR007', '220101007', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR008', '220101008', 'MATH151', 'f', 'None', 85, 'B+', 3.33),
('TR008', '220101008', 'CSS155', 'f', 'None', 86, 'B+', 3.33),
('TR008', '220101008', 'LAN261', 'f', 'None', 87, 'B+', 3.33),
('TR008', '220101008', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR008', '220101008', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR009', '220103009', 'MATH151', 'f', 'None', 91, 'A-', 3.67),
('TR009', '220103009', 'CSS155', 'f', 'None', 74, 'C+', 2.33),
('TR009', '220103009', 'LAN261', 'f', 'None', 54, 'D', 1),
('TR009', '220103009', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR009', '220103009', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR010', '220103010', 'MATH151', 'f', 'None', 49, 'F', 0),
('TR010', '220103010', 'CSS155', 'f', 'None', 45, 'F', 0),
('TR010', '220103010', 'LAN261', 'f', 'None', 78, 'B-', 2.67),
('TR010', '220103010', 'MATH152', 't', 'prM151', 0, NULL , 0),
('TR010', '220103010', 'CSS156', 't', 'prCS155', 0, NULL, 0),
('TR011', '220105011', 'MATH151', 'f', 'None', 51, 'D', 1),
('TR011', '220105011', 'CSS155', 'f', 'None', 53, 'D', 1),
('TR011', '220105011', 'LAN261', 'f', 'None', 54, 'D', 1),
('TR011', '220105011', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR011', '220105011', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR012', '220101012', 'MATH151', 'f', 'None', 65, 'C', 2),
('TR012', '220101012', 'CSS155', 'f', 'None', 56, 'D+', 1.33),
('TR012', '220101012', 'LAN261', 'f', 'None', 70, 'C+', 2.33),
('TR012', '220101012', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR012', '220101012', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR013', '220101013', 'MATH151', 'f', 'None', 58, 'D+', 1.33),
('TR013', '220101013', 'CSS155', 'f', 'None', 80, 'B', 3),
('TR013', '220101013', 'LAN261', 'f', 'None', 76, 'B-', 2.67),
('TR013', '220101013', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR013', '220101013', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67),
('TR014', '220103014', 'MATH151', 'f', 'None', 70, 'C+', 2.33),
('TR014', '220103014', 'CSS155', 'f', 'None', 40, 'F', 0),
('TR014', '220103014', 'LAN261', 'f', 'None', 93, 'A-', 3.67),
('TR014', '220103014', 'MATH152', 't', 'prM151', 72, 'C+' , 2.33),
('TR014', '220103014', 'CSS156', 't', 'prCS155', 0, NULL, 0),
('TR015', '220103015', 'MATH151', 'f', 'None', 70, 'C+', 2.33),
('TR015', '220103015', 'CSS155', 'f', 'None', 89, 'B+', 3.33),
('TR015', '220103015', 'LAN261', 'f', 'None', 68, 'C-', 1.67),
('TR015', '220103015', 'MATH152', 't', 'prM151', 67, 'C-', 1.67),
('TR015', '220103015', 'CSS156', 't', 'prCS155', 69, 'C-', 1.67);


SELECT * FROM Transcripts

-- 6 

CREATE TABLE DegreeProgress (
    student_id VARCHAR(9) PRIMARY KEY REFERENCES Students(student_id),
    status_process VARCHAR(30),
    completed_credits INT,
    degree_program VARCHAR(50),
    expected_graduation_date DATE
);


INSERT INTO DegreeProgress (student_id, status_process, completed_credits, degree_program, expected_graduation_date)
VALUES
    ('220103001', 'Active Status', 90, 'Bachelor of Science in Informational Systems', '2025-06-15'),
    ('220101002', 'Active Status', 85, 'Master of Science in Mathematics and Statistics', '2024-06-20'),
    ('220105003', 'Active Status', 95, 'Bachelor of Science in Computer Science', '2027-06-18'),
    ('220103004', 'Active Status', 75, 'Bachelor of Science in Informational Systems', '2027-06-25'),
    ('220103005', 'Active Status', 80, 'Bachelor of Science in Informational Systems', '2026-06-22'),
    ('220105006', 'Active Status', 88, 'Bachelor of Science in Computer Science', '2026-06-23'),
    ('220101007', 'Active Status', 92, 'Master of Science in Mathematics and Statistics', '2035-06-28'),
    ('220101008', 'Active Status', 40, 'Master of Science in Mathematics and Statistics', '2040-06-30'),
    ('220103009', 'Active Status', 86, 'Bachelor of Science in Informational Systems', '2030-06-17'),
    ('220103010', 'Active Status', 70, 'Bachelor of Science in Informational Systems', '2029-06-16'),
    ('220105011', 'Active Status', 75, 'Bachelor of Science in Computer Science', '2025-06-27'),
    ('220101012', 'Active Status', 82, 'Master of Science in Mathematics and Statistics', '2027-06-29'),
    ('220101013', 'Active Status', 79, 'Master of Science in Mathematics and Statistics', '2028-06-26'),
    ('220103014', 'Active Status', 91, 'Bachelor of Science in Informational Systems', '2025-06-19'),
    ('220103015', 'Active Status', 87, 'Bachelor of Science in Informational Systems', '2025-06-24');

SELECT * FROM DegreeProgress


-- 7

CREATE TABLE Courses (
	course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(50) UNIQUE,
	course_description TEXT,
	term VARCHAR(25),
	isAdvanced BOOLEAN,
	course_price INT,
	department_id VARCHAR(10) REFERENCES Departments(department_id)
);


INSERT INTO Courses (course_id, course_name, course_description, term, isAdvanced, course_price, department_id) VALUES
    ('COUR001', 'MATH151', 'Introduction to Mathematics', 'Fall', 't', 100000, 'DEP01'),
    ('COUR002', 'CSS155', 'Computer Science Basics', 'Fall', 't', 100000, 'DEP02'),
    ('COUR003', 'BIO200', 'Cell Biology', 'Spring', 'f', 75000, 'DEP03'),
    ('COUR004', 'HIST101', 'World History', 'Spring', 'f', 75000, 'DEP04'),
    ('COUR005', 'Physics202', 'Advanced Physics', 'Fall', 'f', 80000, 'DEP05'),
    ('COUR006', 'Chemistry150', 'Chemistry Fundamentals', 'Fall', 'f', 80000, 'DEP06'),
    ('COUR007', 'Literature201', 'Classic Literature', 'Spring', 'f', 60000, 'DEP07'),
    ('COUR008', 'Economics101', 'Principles of Economics', 'Fall', 'f', 60000, 'DEP08'),
    ('COUR009', 'Psychology221', 'Introduction to Psychology', 'Fall', 'f', 40000, 'DEP09'),
    ('COUR010', 'Sociology150', 'Sociology of Culture', 'Spring', 'f', 40000, 'DEP10'),
    ('COUR011', 'ArtHistory201', 'Art History: Renaissance to Modern Art', 'Fall', 'f', 12000, 'DEP11'),
    ('COUR012', 'Music101', 'Fundamentals of Music', 'Spring', 'f', 12000, 'DEP12'),
    ('COUR013', 'PoliticalScience200', 'Political Science: Government Structures', 'Spring', 'f', 14000, 'DEP13'),
    ('COUR014', 'ENVI159', 'Environmental Science', 'Fall', 'f', 80000, 'DEP14'),
    ('COUR015', 'LAN261', 'Language and Society', 'Fall', 'f', 20000, 'DEP15'),
	('COUR016', 'CSS156', 'Advanced Computer Science', 'Spring', 'f', 100000, 'DEP02'),
	('COUR017', 'MATH152', 'Advanced Mathematics', 'Fall', 'f', 100000, 'DEP01');
	
SELECT * FROM Courses	

-- 8

CREATE TABLE Instructors (
    instructor_id VARCHAR(10),
    name VARCHAR(100),
	research_area VARCHAR(255),
    course_name VARCHAR(50) REFERENCES Courses(course_name),
	course_term VARCHAR(25),
    office_location VARCHAR(50),
    office_hours VARCHAR(100)
); 


INSERT INTO Instructors (instructor_id, name, research_area, course_name, course_term, office_location, office_hours)
VALUES
    ('INS01', 'Magzhan Kosharov', 'Recommendation Algorithms', 'MATH151', 'Fall', 'Building A, Room 201', 'Mon 10:00 AM - 12:00 PM, Wed 2:00 PM - 4:00 PM'),
    ('INS02', 'Aigerim Mukhanova', 'Matrix Factorization', 'CSS155', 'Fall', 'Building B, Room 301', 'Tue 1:00 PM - 3:00 PM, Thu 9:00 AM - 11:00 AM'),
    ('INS03', 'Zhanar Kadyrova', NULL, 'Physics202', 'Fall', 'Building C, Room 101', 'Mon 2:00 PM - 4:00 PM, Fri 10:00 AM - 12:00 PM'),
    ('INS04', 'Gulnaz Iskakova', 'Computer Vision', 'Chemistry150', 'Fall', 'Building A, Room 102', 'Wed 3:00 PM - 5:00 PM, Thu 1:00 PM - 3:00 PM'),
    ('INS05', 'Daulet Zhumatayev', 'Machine Learning in IT', 'Literature201', 'Spring', 'Building B, Room 202', 'Tue 10:00 AM - 12:00 PM, Fri 1:00 PM - 3:00 PM'),
    ('INS06', 'Aruzhan Karimova', NULL, 'Economics101', 'Fall', 'Building C, Room 301', 'Mon 1:00 PM - 3:00 PM, Wed 9:00 AM - 11:00 AM'),
    ('INS07', 'Nurlan Beisenov', NULL, 'Psychology221', 'Fall', 'Building A, Room 203', 'Thu 2:00 PM - 4:00 PM, Fri 3:00 PM - 5:00 PM'),
    ('INS08', 'Marzhan Kabdeshova', 'Explainable Recommendations', 'Sociology150', 'Spring', 'Building B, Room 302', 'Tue 3:00 PM - 5:00 PM, Thu 10:00 AM - 12:00 PM'),
    ('INS09', 'Abzal Sadykov', NULL, 'ArtHistory201', 'Fall','Building C, Room 102', 'Wed 1:00 PM - 3:00 PM, Fri 2:00 PM - 4:00 PM'),
    ('INS10', 'Aidana Toktarova', 'Software Engineering', 'Music101', 'Spring', 'Building A, Room 202', 'Mon 3:00 PM - 5:00 PM, Wed 1:00 PM - 3:00 PM'),
    ('INS11', 'Almas Zholdasov', NULL, 'PoliticalScience200', 'Spring', 'Building B, Room 301', 'Tue 2:00 PM - 4:00 PM, Thu 3:00 PM - 5:00 PM'),
    ('INS12', 'Gaukhar Akmoldina', 'Sequential Recommendations', 'ENVI159', 'Fall', 'Building C, Room 101', 'Mon 10:00 AM - 12:00 PM, Fri 9:00 AM - 11:00 AM'),
    ('INS13', 'Aidyn Bektemirov', 'Information Retrieval', 'LAN261', 'Fall', 'Building A, Room 301', 'Wed 2:00 PM - 4:00 PM, Thu 1:00 PM - 3:00 PM'),
    ('INS14', 'Gulmira Baimukhamedova', NULL, 'CSS155', 'Fall', 'Building B, Room 202', 'Tue 3:00 PM - 5:00 PM, Fri 10:00 AM - 12:00 PM'),
    ('INS15', 'Arailym Duisenova', 'Big Data Analytics', 'MATH151', 'Fall', 'Building C, Room 102', 'Mon 1:00 PM - 3:00 PM, Wed 9:00 AM - 11:00 AM'),
	('INS01', 'Magzhan Kosharov', 'Recommendation Algorithms', 'Physics202', 'Fall', 'Building D, Room 201', 'Mon 10:00 AM - 12:00 PM, Wed 2:00 PM - 4:00 PM'),
	('INS10', 'Aidana Toktarova', 'Cybersecurity and Network Security', 'HIST101', 'Spring', 'Building A, Room 202', 'Mon 3:00 PM - 5:00 PM, Wed 1:00 PM - 3:00 PM'),
	('INS10', 'Aidana Toktarova', 'Cybersecurity and Network Security', 'PoliticalScience200', 'Spring', 'Building E, Room 202', 'Mon 3:00 PM - 5:00 PM, Wed 1:00 PM - 3:00 PM'),
	('INS05', 'Daulet Zhumatayev', 'Machine Learning in IT', 'Sociology150', 'Spring', 'Building B, Room 202', 'Tue 10:00 AM - 12:00 PM, Fri 1:00 PM - 3:00 PM');
	

SELECT * FROM Instructors


-- 9

CREATE TABLE Departments (
    department_id VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE,
    dean_name VARCHAR(100),
    office_location VARCHAR(50),
    contact_email VARCHAR(100)
);

INSERT INTO Departments (department_id, department_name, dean_name, office_location, contact_email)
VALUES
    ('DEP01', 'Department of English', 'Dr. Marlan Askenov', 'Building A, Room 301', 'marlan.askenov@sdu.edu.kz'),
    ('DEP02', 'Department of Physics', 'Dr. Askar Kazarov', 'Building B, Room 201', 'askar.kazarov@sdu.edu.kz'),
    ('DEP03', 'Department of Civil Engineering', 'Dr. Aisha Nurkhanova', 'Building C, Room 101', 'aisha.nurkhanova@sdu.edu.kz'),
    ('DEP04', 'Department of Sociology', 'Dr. Aidana Zhumabek', 'Building A, Room 401', 'aidana.zhumabek@sdu.edu.kz'),
    ('DEP05', 'Department of Finance', 'Dr. Daulet Bekzhanov', 'Building B, Room 301', 'daulet.bekzhanov@sdu.edu.kz'),
    ('DEP06', 'Department of Medicine', 'Dr. Gulnaz Yerzhanova', 'Building C, Room 201', 'gulnaz.yerzhanova@sdu.edu.kz'),
    ('DEP07', 'Department of Law', 'Dr. Nurdaulet Bazarbayev', 'Building A, Room 501', 'nurdaulet.bazarbayev@sdu.edu.kz'),
    ('DEP08', 'Department of Education', 'Dr. Saule Ibrayeva', 'Building B, Room 401', 'saule.ibrayeva@sdu.edu.kz'),
    ('DEP09', 'Department of Fine Arts', 'Dr. Aisulu Sadykova', 'Building C, Room 301', 'aisulu.sadykova@sdu.edu.kz'),
    ('DEP10', 'Department of Architecture', 'Dr. Arman Zhakupov', 'Building A, Room 601', 'arman.zhakupov@sdu.edu.kz'),
    ('DEP11', 'Department of Computer Science', 'Dr. Aliya Kenzhebayeva', 'Building B, Room 501', 'aliya.kenzhebayeva@sdu.edu.kz'),
    ('DEP12', 'Department of Environmental Studies', 'Dr. Nurlan Kudaibergenov', 'Building C, Room 401', 'nurlan.kudaibergenov@sdu.edu.kz'),
    ('DEP13', 'Department of Nursing', 'Dr. Dana Kozhaeva', 'Building A, Room 701', 'dana.kozhaeva@sdu.edu.kz'),
    ('DEP14', 'Department of Economics', 'Dr. Temirlan Kazbekov', 'Building B, Room 601', 'temirlan.kazbekov@sdu.edu.kz'),
    ('DEP15', 'Department of Agronomy', 'Dr. Aizhan Akhanova', 'Building C, Room 501', 'aizhan.akhanova@sdu.edu.kz');

SELECT * FROM Departments


-- 10 нужно менять

CREATE TABLE Advisors (
    advisor_id VARCHAR(9) PRIMARY KEY,
    advisor_name VARCHAR(50),
    student_id VARCHAR(9) UNIQUE 
);

INSERT INTO Advisors (advisor_id, student_id, advisor_name) VALUES
    ('220104001', '220103001', 'Aidos Zhumabayev'),
    ('220102002', '220101002', 'Arujan Bazarova'),
    ('220106003', '220105003', 'Alpamys Toktassynov'),
    ('220104004', '220103004', 'Asel Nurmagambetova'),
    ('220104005', '220103005', 'Aidos Zhumabayev'),
    ('220106006', '220105006', 'Alpamys Toktassynov'),
    ('220102007', '220101007', 'Arujan Bazarova'),
    ('220102008', '220101008', 'Aizhan Khamzina'),
    ('220106009', '220103016', 'Aizhanar Urazayeva'),
    ('220102010', '220103017', 'Asylkhan Abylaikhan'),
    ('220104011', '220103018', 'Aigul Kadyrova'),
    ('220106012', '220103019', 'Akzhol Zhetpisbaev'),
    ('220102013', '220103020', 'Aidana Iskakova'),
    ('220104014', '220103021', 'Aiken Zhussupov'),
    ('220106015', '220103022', 'Asylzhan Sarsenbayev');

SELECT * FROM Advisors


-- 11

CREATE TABLE StudentGroups (
    group_id VARCHAR(10) PRIMARY KEY,
    group_name VARCHAR(50),
    group_type VARCHAR(20),
    group_description TEXT,
    group_leader_id VARCHAR(9) REFERENCES Students(student_id),
    meeting_schedule VARCHAR(50),
    advisor_id VARCHAR(9) REFERENCES Advisors(advisor_id)
);


INSERT INTO StudentGroups (group_id, group_name, group_type, group_description, group_leader_id, meeting_schedule, advisor_id)
VALUES
    ('SG001', 'Computer Science Club', 'Club', 'A club for computer enthusiasts.', '220103001', 'Weekly, Fridays 4-6 PM', '220104001'),
    ('SG002', 'Student Government', 'Organization', 'Representing the student body.', '220101002', 'Bi-weekly, Wednesdays 3-5 PM', '220102002'),
    ('SG003', 'Photography Club', 'Club', 'Capturing moments through lenses.', '220105003', 'Monthly, Saturdays 2-4 PM', '220106003'),
    ('SG004', 'Art Society', 'Organization', 'Fostering creativity through art.', '220103004', 'Weekly, Thursdays 5-7 PM', '220104004'),
    ('SG005', 'Chess Club', 'Club', 'Strategic minds at play.', '220103005', 'Bi-weekly, Tuesdays 6-8 PM', '220104005'),
    ('SG006', 'Environmental Activists', 'Organization', 'Promoting eco-friendly initiatives.', '220105006', 'Monthly, Sundays 10 AM - 12 PM', '220106006'),
    ('SG007', 'Theater Ensemble', 'Club', 'Bringing stories to life on stage.', '220101007', 'Weekly, Saturdays 1-3 PM', '220102007'),
    ('SG008', 'Mathematics Society', 'Organization', 'Celebrating the beauty of math.', '220101008', 'Bi-weekly, Mondays 5-7 PM', '220102008'),
    ('SG009', 'Music Appreciation', 'Club', 'Exploring the world of music.', '220103009', 'Monthly, Fridays 7-9 PM', '220106009'),
    ('SG010', 'Marketing Club', 'Club', 'Strategies and innovations in marketing.', '220103010', 'Weekly, Wednesdays 2-4 PM', '220102010'),
    ('SG011', 'Dance Fusion', 'Club', 'Uniting diverse dance styles.', '220105011', 'Bi-weekly, Thursdays 6-8 PM', '220104011'),
    ('SG012', 'Science Fiction Society', 'Organization', 'Exploring the realms of sci-fi.', '220101012', 'Monthly, Mondays 7-9 PM', '220106012'),
    ('SG013', 'Global Affairs Council', 'Organization', 'Discussing international affairs.', '220101013', 'Weekly, Tuesdays 3-5 PM', '220102013'),
    ('SG014', 'Culinary Club', 'Club', 'A taste of culinary creativity.', '220103014', 'Bi-weekly, Saturdays 12-2 PM', '220104014'),
    ('SG015', 'Robotics Team', 'Club', 'Building the future with robots.', '220103015', 'Weekly, Sundays 3-5 PM', '220106015');

SELECT * FROM StudentGroups

-- 12

CREATE TABLE Housing (
	housing_id VARCHAR(10),
    room_number VARCHAR(5),
    building_name VARCHAR(10),
	capacity INT,
	current_occupancy INT,
    floor INT,
    occupant_id VARCHAR(9) REFERENCES Students(student_id),
    occupant_name VARCHAR(50),
    check_in_date DATE,
    check_out_date DATE
);


INSERT INTO Housing (housing_id, room_number, building_name, capacity, current_occupancy, floor, occupant_id, occupant_name, check_in_date, check_out_date)
VALUES
    ('DORM001', 'C513', 'C block', 100, 50, 5, '220103001', 'Marat Sultanov', '2022-08-01', '2022-12-31'),
    ('DORM001', 'C514', 'C block', 100, 50, 5, '220101002', 'Arman Nurmakhanov', '2022-08-05', '2022-12-31'),
    ('DORM001', 'C515', 'C block', 100, 50, 5, '220105003', 'Aliya Bekzhanova', '2022-08-10', '2022-12-31'),
    ('DORM002', 'D601', 'D block', 130, 110, 6, '220103004', 'Alima Abdulova', '2022-08-15', '2022-12-31'),
    ('DORM002', 'D602', 'D block', 130, 110, 6, '220103005', 'Alikhan Zhakupov', '2022-08-20', '2022-12-31'),
    ('DORM002', 'D603', 'D block', 130, 110, 6, '220105006', 'Aruzhan Kenzhebekova', '2022-08-25', '2022-12-31'),
    ('DORM003', 'A516', 'A block', 150, 41, 5, '220101007', 'Maral Sadykova', '2022-09-01', '2022-12-31'),
    ('DORM003', 'A517', 'A block', 150, 41, 5, '220101008', 'Almas Zholdasov', '2022-09-05', '2022-12-31'),
    ('DORM003', 'A518', 'A block', 150, 41, 5, '220103009', 'Aigerim Kudaibergenova', '2022-09-10', '2022-12-31'),
    ('DORM004', 'B604', 'B block', 170, 22, 6, '220103010', 'Nurlan Kozhaev', '2022-09-15', '2022-12-31'),
    ('DORM004', 'B605', 'B block', 170, 22, 6, '220105011', 'Aizhan Aubakirova', '2022-09-20', '2022-12-31'),
    ('DORM004', 'B519', 'B block', 170, 22, 5, '220101012', 'Bekzat Zhanabayev', '2022-09-25', '2022-12-31'),
    ('DORM005', 'E520', 'E block', 180, 87, 5, '220101013', 'Karlygash Sagindykova', '2022-10-01', '2022-12-31'),
    ('DORM005', 'E606', 'E block', 180, 87, 6, '220103014', 'Daulet Kazbekov', '2022-10-05', '2022-12-31'),
    ('DORM005', 'E607', 'E block', 180, 87, 6, '220103015', 'Gulnaz Akhanova', '2022-10-10', '2022-12-31');

SELECT * FROM Housing


-- 13

CREATE TABLE MealPlans (
    plan_id VARCHAR(10) PRIMARY KEY,
    plan_name VARCHAR(50),
	meal_for VARCHAR(50),
    price INT,
    valid_from DATE,
    valid_to DATE
);


INSERT INTO MealPlans (plan_id, plan_name, meal_for, price, valid_from, valid_to) VALUES
    ('MP001', 'Basic', 'Freshman', 5000, '2022-01-01', '2022-06-30'),
    ('MP002', 'Full Meal', 'Sophomores', 8000, '2022-01-01', '2022-06-30'),
    ('MP003', 'Snack Pack', 'Freshman', 1500, '2022-01-01', '2022-06-30'),
    ('MP004', 'Vegetarian', 'Junior', 6000, '2022-01-01', '2022-06-30'),
    ('MP005', 'Flexi-Meals', 'Junior', 7000, '2022-01-01', '2022-06-30'),
    ('MP006', 'Deluxe', 'Sophomores', 10000, '2022-01-01', '2022-06-30'),
    ('MP007', 'Lite Bites', 'Freshman', 3500, '2022-01-01', '2022-06-30'),
    ('MP008', 'Healthy Living', 'Junior', 7500, '2022-01-01', '2022-06-30'),
    ('MP009', 'Gourmet', 'Senior', 12000, '2022-01-01', '2022-06-30'),
    ('MP010', 'Student Special', 'Sophomores', 4500, '2022-01-01', '2022-06-30'),
    ('MP011', 'Economy Plan', 'Freshman', 3000, '2022-01-01', '2022-06-30'),
    ('MP012', 'Balanced Diet', 'Senior', 8500, '2022-01-01', '2022-06-30'),
    ('MP013', 'Quick Bites', 'Sophomores', 2000, '2022-01-01', '2022-06-30'),
    ('MP014', 'Family Pack', 'Senior', 16000, '2022-01-01', '2022-06-30'),
    ('MP015', 'Executive', 'Senior', 11000, '2022-01-01', '2022-06-30');

SELECT * FROM MealPlans


-- 14

CREATE TABLE StudentFees (
    fee_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
    tuition_fee INT,
	student_fee INT,
	dorm_fee INT,
	food_fee INT,
	payment_status VARCHAR(20)
);


INSERT INTO StudentFees (fee_id, student_id, tuition_fee, student_fee, dorm_fee, food_fee, payment_status) VALUES
    ('FEE001', '220103001', 500000, 30000, 477000, 25000, 'Unpaid'),
    ('FEE002', '220101002', 400000, 30000, 477000, 30000, 'Paid'),
    ('FEE003', '220105003', 550000, 30000, 477000, 25000, 'Unpaid'),
    ('FEE004', '220103004', 500000, 30000, 477000, 23000, 'Paid'),
    ('FEE005', '220103005', 500000, 30000, 477000, 15000, 'Unpaid'),
    ('FEE006', '220105006', 550000, 30000, 477000, 25000, 'Paid'),
    ('FEE007', '220101007', 400000, 30000, 477000, 32000, 'Unpaid'),
    ('FEE008', '220101008', 400000, 30000, 477000, 42000, 'Paid'),
    ('FEE009', '220103009', 500000, 30000, 477000, 36000, 'Unpaid'),
    ('FEE010', '220103010', 500000, 30000, 477000, 42240, 'Paid'),
    ('FEE011', '220105011', 550000, 30000, 477000, 55000, 'Unpaid'),
    ('FEE012', '220101012', 400000, 30000, 477000, 25000, 'Paid'),
    ('FEE013', '220101013', 400000, 30000, 477000, 30000, 'Unpaid'),
    ('FEE014', '220103014', 500000, 30000, 477000, 35000, 'Paid'),
    ('FEE015', '220103015', 500000, 30000, 477000, 25000, 'Unpaid');

SELECT * FROM StudentFees


-- 15

CREATE TABLE Library (
    resource_id VARCHAR(10) PRIMARY KEY,
    resource_name VARCHAR(100),
    resource_type VARCHAR(50),
    author VARCHAR(100),
    publication_year INT,
    available_copies INT,
    checkout_status VARCHAR(20)
);

INSERT INTO Library (resource_id, resource_name, resource_type, author, publication_year, available_copies, checkout_status)
VALUES
    ('LBR001', 'Independence Journey', 'Book', 'Ainur Aitkhanova', 2021, 5, 'Available'),
    ('LBR002', 'I Am a Requester', 'Electronic Resource', 'Maulen Bayangali', 2020, 2, 'Available'),
    ('LBR003', 'History of Kazakhstan', 'Book', 'Madina Muslumankulova', 2019, 8, 'Available'),
    ('LBR004', 'Nazarbayev – Development and Opportunities in the XXI Century', 'Book', 'Alikhan Toleutai', 2018, 3, 'Available'),
    ('LBR005', 'Homeland Beginnings', 'Book', 'Dala Zhumagazy', 2020, 6, 'Available'),
    ('LBR006', 'Constitution of the Republic of Kazakhstan', 'Book', 'Adilet Shakhanov', 2022, 4, 'Available'),
    ('LBR007', 'Creation - Worldly Wealth', 'Electronic Resource', 'Temirlan Mukhambetkhanov', 2021, 5, 'Checked Out'),
    ('LBR008', 'Centuries of Kazakhstan Land', 'Book', 'Saule Tugzhanova', 2019, 2, 'Available'),
    ('LBR009', 'Word Games', 'Book', 'Nursaul Tleukasym', 2020, 7, 'Available'),
    ('LBR010', 'My Parents', 'Electronic Resource', 'Erkebulan Serikbayev', 2022, 3, 'Available'),
    ('LBR011', 'White Child', 'Book', 'Alihan Dzhaqypov', 2021, 5, 'Available'),
    ('LBR012', 'Eastern Literature', 'Book', 'Elnur Sarsenbek', 2020, 4, 'Available'),
    ('LBR013', 'Humanitarian Word', 'Electronic Resource', 'Nurbol Serikqali', 2019, 6, 'Checked Out'),
    ('LBR014', 'Historical Song', 'Book', 'Aizhan Alimbek', 2021, 2, 'Available'),
    ('LBR015', 'Child and City', 'Book', 'Adiya Sairan', 2020, 5, 'Available');

SELECT * FROM Library


-- 16 

CREATE TABLE HealthServices (
    service_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
	total_visits INT,
	visit_duration_minutes INT,
    service_date DATE,
    service_type VARCHAR(50),
    doctor_name VARCHAR(100),
    diagnosis TEXT,
    follow_up_required VARCHAR(3) CHECK (follow_up_required IN ('Yes', 'No'))
);


INSERT INTO HealthServices (service_id, student_id, total_visits, visit_duration_minutes, service_date, service_type, doctor_name, diagnosis, follow_up_required)
VALUES
    ('HS2022001', '220103001', 5, 60, '2022-01-15', 'Physical Examination', 'Doctor Arnur Bashonov', 'Normal', 'No'),
    ('HS2022002', '220101002', 8, 65, '2022-02-02', 'Consultation', 'Doctor Akmaral Zhumabekova', 'Mild flu', 'Yes'),
    ('HS2022003', '220105003', 10, 63, '2022-02-20', 'Dental Checkup', 'Doctor Alpamys Toktassynov', 'No issues', 'No'),
    ('HS2022004', '220103004', 4, 50, '2022-03-10', 'Eye Exam', 'Doctor Aigerim Nurmagambetova', 'Prescription updated', 'Yes'),
    ('HS2022005', '220103005', 15, 40, '2022-03-25', 'Physical Therapy', 'Doctor Aidana Iskakova', 'Muscle strain', 'Yes'),
    ('HS2022006', '220105006', 3, 30, '2022-04-05', 'Flu Vaccination', 'Nurse Davis', 'Common cold', 'Yes'),
    ('HS2022007', '220101007', 2, 30, '2022-04-20', 'Consultation', 'Doctor Altair Anderson', 'Stress-related symptoms', 'Yes'),
    ('HS2022008', '220101008', 11, 35, '2022-05-05', 'Allergy Test', 'Doctor Alima Martinez', 'Allergies detected', 'Yes'),
    ('HS2022009', '220103009', 12, 45, '2022-05-20', 'Physical Examination', 'Doctor Asylkhan Taylor', 'Normal', 'No'),
    ('HS2022010', '220103010', 13, 33, '2022-06-02', 'Vaccination', 'Nurse Wilson', 'Flu', 'Yes'),
    ('HS2022011', '220105011', 14, 23, '2022-06-15', 'Dental Cleaning', 'Dental Hygienist Johnson', 'No issues', 'No'),
    ('HS2022012', '220101012', 7, 55, '2022-07-01', 'Eye Exam', 'Doctor Asylzhan White', 'Prescription unchanged', 'No'),
    ('HS2022013', '220101013', 8, 51, '2022-07-15', 'Consultation', 'Doctor Alima Garcia', 'General health assessment', 'No'),
    ('HS2022014', '220103014', 10, 30, '2022-08-01', 'Physical Therapy', 'Doctor Aigan Rodriguez', 'Muscle sprain', 'Yes'),
    ('HS2022015', '220103015', 9, 49, '2022-08-15', 'Flu Vaccination', 'Nurse Davis', 'Normal', 'Yes');

SELECT * FROM HealthServices

-- 17

CREATE TABLE StudentAchievements (
    achievement_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
	department_id VARCHAR(10) REFERENCES Departments(department_id),
    achievement_type VARCHAR(50),
    achievement_description TEXT,
    award_name VARCHAR(100),
    award_date DATE
);


INSERT INTO StudentAchievements (achievement_id, student_id, department_id, achievement_type, achievement_description, award_name, award_date)
VALUES
    ('SA2022001', '220103001', 'DEP01', 'Excellent Grades', 'Top performer in Computer Science', 'Academic Excellence Award', '2022-02-15'),
    ('SA2022002', '220101002', 'DEP02', 'Research Publication', 'Published paper in Physics journal', 'Best Research Paper Award', '2022-03-02'),
    ('SA2022003', '220105003', 'DEP03', 'Outstanding Project', 'Developed innovative app for Biology project', 'Project Showcase Award', '2022-03-20'),
    ('SA2022004', '220103004', 'DEP04', 'Subject Competition', 'Winner of Mathematics Olympiad', 'Gold Medal in Mathematics', '2022-04-10'),
    ('SA2022005', '220103005', 'DEP05', 'Top Performer', 'Achieved highest scores in Literature course', 'Literature Excellence Award', '2022-04-25'),
    ('SA2022006', '220105006', 'DEP06', 'Coding Challenge', 'First place in Coding Competition', 'Coding Champion Award', '2022-05-05'),
    ('SA2022007', '220101007', 'DEP07', 'Best Presenter', 'Delivered outstanding presentation in Economics seminar', 'Best Presenter Award', '2022-05-20'),
    ('SA2022008', '220101008', 'DEP08', 'Class Participation', 'Active participation in Sociology discussions', 'Class Participation Award', '2022-06-05'),
    ('SA2022009', '220103009', 'DEP09', 'Outstanding Thesis', 'Produced exceptional thesis in Computer Science', 'Thesis Excellence Award', '2022-06-20'),
    ('SA2022010', '220103010', 'DEP10', 'Innovation Challenge', 'Invented new concept in CSS project', 'Innovation Award', '2022-07-02'),
    ('SA2022011', '220105011', 'DEP11', 'Creative Writing', 'Winner of Creative Writing Competition', 'Creative Writing Award', '2022-07-15'),
    ('SA2022012', '220101012', 'DEP12', 'Leadership Role', 'Elected as class representative', 'Leadership Recognition', '2022-08-01'),
    ('SA2022013', '220101013', 'DEP13', 'Academic Excellence', 'Consistent top performer in Psychology courses', 'Academic Star Award', '2022-08-15'),
    ('SA2022014', '220103014', 'DEP14', 'Outstanding Performance', 'Highest grades in Physics subject', 'Subject Excellence Award', '2022-09-01'),
    ('SA2022015', '220103015', 'DEP15', 'Exceptional Project', 'Completed remarkable project in Environmental Studies', 'Environmental Project Award', '2022-09-15');

SELECT * FROM StudentAchievements


-- 18

CREATE TABLE Internships (
    internship_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
	company_name VARCHAR(100),
	endedIntern BOOLEAN,
    start_date DATE,
    end_date DATE,
    position VARCHAR(50),
    supervisor_name VARCHAR(100),
    description TEXT
);

INSERT INTO Internships (internship_id, student_id, company_name, endedIntern, start_date, end_date, position, supervisor_name, description)
VALUES
    ('INT2022001', '220103001', 'Tech Innovators Ltd.', 't', '2022-01-10', '2022-04-10', 'Software Developer Intern', 'Abylai Kosanov', 'Worked on developing new features for the companys mobile application.'),
    ('INT2022002', '220101002', 'Global Finance Corp.', 't', '2022-02-15', '2022-05-15', 'Financial Analyst Intern', 'Aizhan Kadyrova', 'Analyzed financial data and prepared reports for senior analysts.'),
    ('INT2022003', '220105003', 'HealthCare Solutions Inc.', 'f', '2022-03-20', NULL, 'Medical Research Intern', 'Aruzhan Khamzina', 'Assisted in conducting medical research studies and collecting data.'),
    ('INT2022004', '220103004', 'Creative Design Studios', 't', '2022-04-25', '2022-07-25', 'Graphic Design Intern', 'Alpamys Toktassynov', 'Created visual content for various marketing campaigns.'),
    ('INT2022005', '220103005', 'GreenTech Innovations', 't', '2022-05-30', '2022-08-30', 'Environmental Sustainability Intern', 'Asel Nurmagambetova', 'Contributed to projects aimed at promoting environmental sustainability.'),
    ('INT2022006', '220105006', 'InnovateTech Solutions', 'f', '2022-06-15', NULL, 'Data Science Intern', 'Aigerim Iskakova', 'Utilized machine learning algorithms to analyze large datasets.'),
    ('INT2022007', '220101007', 'Social Impact Foundation', 't', '2022-07-20', '2022-10-20', 'Community Outreach Intern', 'Askar Koshanov', 'Engaged in community outreach programs and events.'),
    ('INT2022008', '220101008', 'Legal Services Agency', 't', '2022-08-25', '2022-11-25', 'Legal Intern', 'Aizhanar Urazayeva', 'Assisted legal professionals in researching and preparing legal documents.'),
    ('INT2022009', '220103009', 'HealthTech Innovations', 'f', '2022-09-10', NULL, 'Health Informatics Intern', 'Alikhan Zhussupov', 'Worked on projects related to health information systems and data analysis.'),
    ('INT2022010', '220103010', 'EduHub Technologies', 't', '2022-10-15', '2023-01-15', 'Education Technology Intern', 'Asylzhan Sarsenbayev', 'Contributed to the development of educational technology solutions.'),
    ('INT2022011', '220105011', 'Cultural Exchange Center', 't', '2022-11-20', '2023-02-20', 'International Relations Intern', 'Amina Suleimenova', 'Facilitated cultural exchange programs and assisted in international relations activities.'),
    ('INT2022012', '220101012', 'Media Productions Ltd.', 'f', '2022-12-25', NULL, 'Media Production Intern', 'Alim Serikov', 'Gained experience in video editing, production, and content creation.'),
    ('INT2022013', '220101013', 'Nonprofit Organization Network', 't', '2023-01-30', '2023-04-30', 'Nonprofit Management Intern', 'Aigerim Sagynbekova', 'Contributed to nonprofit management activities and fundraising efforts.'),
    ('INT2022014', '220103014', 'Urban Planning Associates', 't', '2023-02-15', '2023-05-15', 'Urban Planning Intern', 'Aruzhan Zhumabekova', 'Participated in urban planning projects and data analysis for city development.'),
    ('INT2022015', '220103015', 'Fashion Trends Magazine', 'f', '2023-03-20', NULL, 'Fashion Journalism Intern', 'Aibek Rakhimov', 'Wrote articles and assisted in editorial tasks for a fashion magazine.');

SELECT * FROM Internships


-- 19

CREATE TABLE StudyAbroad (
    study_abroad_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
    host_university VARCHAR(100),
    country VARCHAR(50),
    start_date DATE,
    end_date DATE,
    program VARCHAR(100),
    comments TEXT
);

INSERT INTO StudyAbroad (study_abroad_id, student_id, host_university, country, start_date, end_date, program, comments)
VALUES
    ('SA2022001', '220103001', 'University of California, Berkeley', 'USA', '2022-09-01', '2023-05-31', 'Computer Science Exchange Program', 'Excited about the research opportunities.'),
    ('SA2022002', '220101002', 'University of Oxford', 'United Kingdom', '2022-10-01', '2023-06-30', 'Economics and Business Studies', 'Participating in the Oxford Leadership Program.'),
    ('SA2022003', '220105003', 'Sorbonne University', 'France', '2023-01-15', '2023-12-15', 'Art History and Cultural Studies', 'Learning French language and exploring French culture.'),
    ('SA2022004', '220103004', 'University of Tokyo', 'Japan', '2022-10-01', '2023-08-31', 'Mechanical Engineering Program', 'Excited about experiencing Japanese engineering practices.'),
    ('SA2022005', '220103005', 'ETH Zurich', 'Switzerland', '2023-02-15', '2023-12-15', 'Physics Research Exchange', 'Exploring advanced physics research opportunities.'),
    ('SA2022006', '220105006', 'University of Sydney', 'Australia', '2023-03-01', '2023-11-30', 'Environmental Science Program', 'Studying the unique ecosystems of Australia.'),
    ('SA2022007', '220101007', 'National University of Singapore', 'Singapore', '2023-01-15', '2023-11-30', 'Business Administration Exchange', 'Learning about Asian business practices and culture.'),
    ('SA2022008', '220101008', 'University of Amsterdam', 'Netherlands', '2022-11-01', '2023-06-30', 'Social Psychology Research Program', 'Investigating cross-cultural social psychology.'),
    ('SA2022009', '220103009', 'McGill University', 'Canada', '2023-01-15', '2023-08-31', 'Biochemistry Research Exchange', 'Conducting research in the field of biochemistry.'),
    ('SA2022010', '220103010', 'Seoul National University', 'South Korea', '2022-09-01', '2023-06-30', 'Korean Language and Culture Program', 'Immersing in Korean language and culture.'),
    ('SA2022011', '220105011', 'University of Cape Town', 'South Africa', '2022-10-15', '2023-07-15', 'African History and Development Studies', 'Exploring African history and development challenges.'),
    ('SA2022012', '220101012', 'University of Helsinki', 'Finland', '2023-02-01', '2023-10-31', 'Environmental Policy and Sustainability', 'Studying sustainable practices in Nordic countries.'),
    ('SA2022013', '220101013', 'Kings College London', 'United Kingdom', '2023-01-15', '2023-09-30', 'Literature and Cultural Studies', 'Analyzing British literature and cultural phenomena.'),
    ('SA2022014', '220103014', 'ETH Zurich', 'Switzerland', '2023-03-15', '2023-12-15', 'Robotics and Automation Research', 'Engaging in cutting-edge robotics research.'),
    ('SA2022015', '220103015', 'University of British Columbia', 'Canada', '2023-02-01', '2023-10-31', 'Psychology and Cognitive Science', 'Investigating cross-cultural aspects of psychology and cognition.');

SELECT * FROM StudyAbroad


-- 20

CREATE TABLE StudentEvents (
    event_id VARCHAR(10) PRIMARY KEY,
    event_name VARCHAR(100),
	isUpcoming BOOLEAN,
    event_date DATE,
    event_location VARCHAR(100),
    organizer VARCHAR(100),
    description TEXT,
    capacity INT,
    comments TEXT
);


INSERT INTO StudentEvents (event_id, event_name, isUpcoming, event_date, event_location, organizer, description, capacity, comments) VALUES
    ('SE2022001', 'Student Welcome Party', 'f', '2023-09-01', 'Student Center', 'Student Council', 'Annual event to welcome new students', 200, 'Free food and music!'),
    ('SE2022002', 'Career Fair', 'f', '2023-09-15', 'Sports Complex', 'Career Services', 'Connect with potential employers and explore job opportunities', 300, 'Bring your resume!'),
    ('SE2022003', 'Cultural Festival', 'f', '2023-10-10', 'Main Lawn', 'International Office', 'Celebrate diversity with music, food, and performances', 150, 'Wear traditional clothing if you can!'),
    ('SE2022004', 'Tech Symposium', 'f', '2023-11-05', 'Engineering Building', 'Computer Science Department', 'Showcasing the latest advancements in technology', 100, 'Open to all students and faculty'),
    ('SE2022005', 'Art Exhibition', 'f', '2023-11-20', 'Fine Arts Gallery', 'Art Department', 'Display of student and faculty artwork', 50, 'Refreshments provided'),
    ('SE2022006', 'Science Lecture Series', 'f', '2023-12-03', 'Science Auditorium', 'Natural Sciences Department', 'Explore cutting-edge topics in science', 120, 'Q&A session after each lecture'),
    ('SE2022007', 'Movie Night', 't', '2024-01-15', 'Outdoor Amphitheater', 'Student Activities Board', 'Screening of a popular movie under the stars', 250, 'Bring your own blankets and snacks'),
    ('SE2022008', 'Health and Wellness Workshop', 'f', '2023-02-10', 'Wellness Center', 'Student Health Services', 'Learn about maintaining a healthy lifestyle', 80, 'Free wellness kits for attendees'),
    ('SE2022009', 'Book Club Meeting', 't', '2024-03-02', 'Library', 'English Department', 'Discussion on the latest book selection', 30, 'New members welcome!'),
    ('SE2022010', 'Sports Tournament', 't', '2024-03-18', 'Sports Complex', 'Athletics Department', 'Compete in various sports for fun and prizes', 150, 'Sign up at the Athletics Office'),
    ('SE2022011', 'Music Concert', 't', '2024-04-05', 'Concert Hall', 'Music Department', 'Performance by talented student musicians', 100, 'Tickets available at the door'),
    ('SE2022012', 'Environmental Awareness Day', 't', '2024-04-22', 'Main Quad', 'Environmental Club', 'Educational activities to promote environmental awareness', 120, 'Plant a tree and get a free reusable water bottle!'),
    ('SE2022013', 'Business Networking Mixer', 't', '2024-05-10', 'Business Building', 'Business Department', 'Connect with alumni and industry professionals', 80, 'Business attire recommended'),
    ('SE2022014', 'Language Exchange Fair', 't', '2024-06-02', 'Student Center', 'Languages Department', 'Opportunity to practice different languages with fellow students', 60, 'Refreshments provided'),
    ('SE2022015', 'Community Service Day', 't', '2024-06-20', 'Various Locations', 'Community Engagement Office', 'Volunteer for community projects and make a positive impact', 200, 'Sign up in advance for preferred project');

SELECT * FROM StudentEvents


-- 21

CREATE TABLE Graduation (
    graduation_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) REFERENCES Students(student_id),
	isGraduated boolean,
    graduation_date DATE,
	degree_type VARCHAR(50),
    ceremony_date DATE,
    ceremony_location VARCHAR(100),
    remarks TEXT
);

INSERT INTO Graduation (graduation_id, student_id, isGraduated, graduation_date, degree_type, ceremony_date, ceremony_location, remarks)
VALUES
    ('GR001', '220103001', 't', '2026-06-15', 'Bachelor of Science in Informational Systems', '2026-06-20', 'Main Hall', 'No remarks'),
    ('GR002', '220101002', 'f', NULL, 'Master of Science in Mathematics and Statistics', NULL, 'Auditorium A', 'Pending remarks'),
    ('GR003', '220105003', 't', '2026-06-17', 'Bachelor of Science in Computer Science', '2026-06-22', 'Outdoor Arena', 'Magnificent ceremony'),
    ('GR004', '220103004', 't', '2026-06-18', 'Bachelor of Science in Informational Systems', '2026-06-23', 'Grand Ballroom', 'Exceptional student'),
    ('GR005', '220103005', 't', '2026-06-19', 'Bachelor of Science in Informational Systems', '2026-06-24', 'Student Center', 'Future leader'),
    ('GR006', '220105006', 'f', NULL, 'Bachelor of Science in Computer Science', NULL, 'Sports Complex', 'Athletic achievement'),
    ('GR007', '220101007', 't', '2026-06-21', 'Master of Science in Mathematics and Statistics', '2026-06-26', 'Outdoor Amphitheater', 'Outstanding performance'),
    ('GR008', '220101008', 't', '2026-06-22', 'Master of Science in Mathematics and Statistics', '2026-06-27', 'Conference Hall', 'Research excellence'),
    ('GR009', '220103009', 'f', NULL, 'Bachelor of Science in Informational Systems', NULL, 'Main Hall', 'Commendable efforts'),
    ('GR010', '220103010', 't', '2026-06-24', 'Bachelor of Science in Informational Systems', '2026-06-29', 'Auditorium B', 'Creative achievements'),
    ('GR011', '220105011', 't', '2026-06-25', 'Bachelor of Science in Computer Science', '2026-06-30', 'Student Center', 'Innovative contributions'),
    ('GR012', '220101012', 'f', NULL, 'Master of Science in Mathematics and Statistics', NULL, 'Grand Ballroom', 'Academic excellence'),
    ('GR013', '220101013', 't', '2026-06-27', 'Master of Science in Mathematics and Statistics', '2026-07-02', 'Outdoor Arena', 'Intellectual leadership'),
    ('GR014', '220103014', 'f', NULL, 'Bachelor of Science in Informational Systems', NULL, 'Conference Hall', 'Future entrepreneur'),
    ('GR015', '220103015', 'f', NULL, 'Bachelor of Science in Informational Systems', NULL, 'Grand Ballroom', 'Published research');
	
SELECT * FROM Graduation



-- 22

CREATE TABLE Alumni (
    alumni_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(9) UNIQUE,
	department_id VARCHAR(10) REFERENCES Departments(department_id),
    graduation_date DATE,
    degree_type VARCHAR(50),
    major VARCHAR(50),
    employment_status VARCHAR(50),
    employer VARCHAR(100),
    job_title VARCHAR(100)
);


INSERT INTO Alumni (alumni_id, student_id, department_id, graduation_date, degree_type, major, employment_status, employer, job_title) VALUES
    ('AL001', '180103050', 'DEP01', '2022-06-30', 'Bachelor of Science', 'Computer Science', 'Employed', 'Tech Company', 'Software Engineer'),
    ('AL002', '180101051', 'DEP01', '2022-06-30', 'Bachelor of Arts', 'English Literature', 'Employed', 'Publishing House', 'Editor'),
    ('AL003', '180105052', 'DEP03', '2022-06-30', 'Bachelor of Business Administration', 'Marketing', 'Employed', 'Marketing Agency', 'Marketing Specialist'),
    ('AL004', '180106053', 'DEP04', '2022-06-30', 'Bachelor of Science', 'Biology', 'Employed', 'Pharmaceutical Company', 'Biologist'),
    ('AL005', '180104054', 'DEP05', '2022-06-30', 'Bachelor of Engineering', 'Civil Engineering', 'Employed', 'Construction Firm', 'Civil Engineer'),
    ('AL006', '180105055', 'DEP06', '2022-06-30', 'Bachelor of Science', 'Chemistry', 'Employed', 'Chemical Laboratory', 'Chemist'),
    ('AL007', '180102056', 'DEP07', '2022-06-30', 'Bachelor of Business Administration', 'Finance', 'Employed', 'Finance Firm', 'Financial Analyst'),
    ('AL008', '180104057', 'DEP08', '2022-06-30', 'Bachelor of Arts', 'History', 'Employed', 'Museum', 'Curator'),
    ('AL009', '180105058', 'DEP09', '2022-06-30', 'Bachelor of Science', 'Psychology', 'Employed', 'Counseling Center', 'Psychologist'),
    ('AL010', '180106059', 'DEP10', '2022-06-30', 'Bachelor of Arts', 'Sociology', 'Employed', 'Social Research Institute', 'Sociologist'),
    ('AL011', '180104060', 'DEP11', '2022-06-30', 'Bachelor of Science', 'Environmental Science', 'Employed', 'Environmental Agency', 'Environmental Scientist'),
    ('AL012', '180101061', 'DEP12', '2022-06-30', 'Bachelor of Arts', 'English Language', 'Employed', 'Education Institution', 'English Teacher'),
    ('AL013', '180106062', 'DEP13', '2022-06-30', 'Bachelor of Science', 'Mathematics', 'Employed', 'Technology Company', 'Data Analyst'),
    ('AL014', '180105063', 'DEP14', '2022-06-30', 'Bachelor of Arts', 'Communication Studies', 'Employed', 'Media Company', 'Communications Specialist'),
    ('AL015', '180106065', 'DEP15', '2022-06-30', 'Bachelor of Science', 'Physics', 'Employed', 'Research Institute', 'Research Scientist');

SELECT * FROM Alumni


-- 23

CREATE TABLE Faculty (
    faculty_id VARCHAR(7) PRIMARY KEY,
    faculty_name VARCHAR(100),
	advisor_id VARCHAR(9) REFERENCES Advisors(advisor_id),
    dean_name VARCHAR(100),
    contact_email VARCHAR(100) 
);

INSERT INTO Faculty (faculty_id, faculty_name, advisor_id, dean_name, contact_email) VALUES
    ('FAC001', 'Faculty of Arts and Humanities', '220104001', 'Dr. Aigerim Doszhanova', 'arts_humanities_dean@sdu.edu.kz'),
    ('FAC002', 'Faculty of Science', '220102002', 'Dr. Nurzhan Khamitov', 'science_dean@sdu.edu.kz'),
    ('FAC003', 'Faculty of Engineering', '220106003', 'Dr. Zhanar Serikova', 'engineering_dean@sdu.edu.kz'),
    ('FAC004', 'Faculty of Social Sciences', '220104004', 'Dr. Bakhyt Suleimenova', 'social_sciences_dean@sdu.edu.kz'),
    ('FAC005', 'Faculty of Business Administration', '220104005', 'Dr. Almas Zhumabekov', 'business_admin_dean@sdu.edu.kz'),
    ('FAC006', 'Faculty of Medicine', '220106006', 'Dr. Aizhan Aitkhozhina', 'medicine_dean@sdu.edu.kz'),
    ('FAC007', 'Faculty of Law', '220102007', 'Dr. Almat Kenzhebayev', 'law_dean@sdu.edu.kz'),
    ('FAC008', 'Faculty of Education', '220102008', 'Dr. Aizhan Mukhamadiyeva', 'education_dean@sdu.edu.kz'),
    ('FAC009', 'Faculty of Fine Arts', '220106009', 'Dr. Abai Zhunussov', 'fine_arts_dean@sdu.edu.kz'),
    ('FAC010', 'Faculty of Architecture', '220102010', 'Dr. Gulnara Mukhtarova', 'architecture_dean@sdu.edu.kz'),
    ('FAC011', 'Faculty of Information Technology', '220104011', 'Dr. Askar Toktassynov', 'it_dean@sdu.edu.kz'),
    ('FAC012', 'Faculty of Environmental Sciences', '220106012', 'Dr. Kamila Ibraimova', 'environmental_sciences_dean@sdu.edu.kz'),
    ('FAC013', 'Faculty of Health Sciences', '220102013', 'Dr. Altynay Zhaparova', 'health_sciences_dean@sdu.edu.kz'),
    ('FAC014', 'Faculty of Economics', '220104014', 'Dr. Daulet Toleubayev', 'economics_dean@sdu.edu.kz'),
    ('FAC015', 'Faculty of Agriculture', '220106015', 'Dr. Gaukhar Abdykalikova', 'agriculture_dean@sdu.edu.kz');
	
SELECT * FROM Faculty


-- 24

CREATE TABLE Staff (
    staff_id VARCHAR(9) PRIMARY KEY,
    staff_name VARCHAR(100),
    position VARCHAR(50),
    department_name VARCHAR(100) REFERENCES Departments(department_name),
    contact_email VARCHAR(100) 
);

INSERT INTO Staff (staff_id, staff_name, position, department_name, contact_email) VALUES
    ('S001', 'Aruzhan Zhumagali', 'Assistant Professor', 'Department of English', 'aruzhan.zhumagali@staff.sdu.edu.kz'),
    ('S002', 'Bekzat Abylaikhan', 'Researcher', 'Department of Physics', 'bekzat.abylaikhan@staff.sdu.edu.kz'),
    ('S003', 'Camilla Abdirova', 'Lecturer', 'Department of Civil Engineering', 'camilla.abdirova@staff.sdu.edu.kz'),
    ('S004', 'Dias Sarsenbayev', 'Associate Professor', 'Department of Sociology', 'dias.sarsenbayev@staff.sdu.edu.kz'),
    ('S005', 'Erlan Kadyrov', 'Senior Lecturer', 'Department of Finance', 'erlan.kadyrov@staff.sdu.edu.kz'),
    ('S006', 'Farida Nurzhanova', 'Professor', 'Department of Medicine', 'farida.nurzhanova@staff.sdu.edu.kz'),
    ('S007', 'Galym Zhumabayev', 'Senior Researcher', 'Department of Law', 'galym.zhumabayev@staff.sdu.edu.kz'),
    ('S008', 'Hafiz Khamitov', 'Educational Specialist', 'Department of Education', 'hafiz.khamitov@staff.sdu.edu.kz'),
    ('S009', 'Indira Mukhamedzhanova', 'Instructional Designer', 'Department of Fine Arts', 'indira.mukhamedzhanova@staff.sdu.edu.kz'),
    ('S010', 'Jasmin Abilova', 'Professor Emeritus', 'Department of Architecture', 'jasmin.abilova@staff.sdu.edu.kz'),
    ('S011', 'Kairat Tulebergenov', 'Lead Programmer', 'Department of Computer Science', 'kairat.tulebergenov@staff.sdu.edu.kz'),
    ('S012', 'Laura Nurmanova', 'Digital Learning Specialist', 'Department of Environmental Studies', 'laura.nurmanova@staff.sdu.edu.kz'),
    ('S013', 'Maksat Tuleuov', 'Online Course Coordinator', 'Department of Nursing', 'maksat.tuleuov@staff.sdu.edu.kz'),
    ('S014', 'Nazira Abdykadyrova', 'Economist', 'Department of Economics', 'nazira.abdykadyrova@staff.sdu.edu.kz'),
    ('S015', 'Oscar Kudaibergenov', 'Dean', 'Department of Agronomy', 'oscar.kudaibergenov@staff.sdu.edu.kz');

SELECT * FROM Staff


----------------------------------------------------------------



-- Task 1 

SELECT
    Students.student_id,
    Students.first_name,
    Enrollments.enrollment_id,
    Enrollments.course_name,
	Enrollments.enrollment_date
FROM
    Students
JOIN
    Enrollments ON Students.student_id = Enrollments.student_id;

--


-- Task 2

SELECT
    Students.student_id,
    Students.first_name,
    Enrollments.course_name,
    Courses.course_description
FROM
    Students
LEFT JOIN
    Enrollments ON Students.student_id = Enrollments.student_id
LEFT JOIN
    Courses ON Enrollments.course_name = Courses.course_name;

--


-- Task 3

SELECT student_id, first_name, last_name
FROM Students
WHERE student_id NOT IN (SELECT student_id FROM Advisors);

--


-- Task 4 

SELECT
    Students.student_id,
    Students.first_name,
    AVG(Transcripts.gpa_for_course) AS total_gpa
FROM
    Students
JOIN
    Transcripts ON Students.student_id = Transcripts.student_id
GROUP BY
    Students.student_id, Students.first_name
HAVING
    AVG(Transcripts.gpa_for_course) = (SELECT MAX(avg_gpa) FROM (SELECT AVG(gpa_for_course) AS avg_gpa FROM Transcripts GROUP BY student_id) AS avg_table);

--


-- Task 5

SELECT
    Students.student_id,
    Students.first_name,
    Students.last_name,
    Students.major,
    AVG(Transcripts.gpa_for_course) AS total_gpa
FROM
    Students
JOIN
    Transcripts ON Students.student_id = Transcripts.student_id
GROUP BY
    Students.student_id, Students.first_name, Students.last_name, Students.major
ORDER BY 
    Students.major;

--


-- Task 6

SELECT
    Departments.department_id,
    Departments.department_name,
    COUNT(Courses.course_id) AS course_count
FROM
    Departments
LEFT JOIN
    Courses ON Departments.department_id = Courses.department_id
GROUP BY
    Departments.department_id, Departments.department_name
ORDER BY
    course_count DESC;


--


-- Task 7

SELECT
    Faculty.faculty_name,
    Advisors.advisor_name,
    Students.first_name,
    Students.last_name
FROM
    Faculty
JOIN
    Advisors ON Faculty.advisor_id = Advisors.advisor_id
LEFT JOIN
    Students ON Advisors.student_id = Students.student_id
ORDER BY
    Faculty.faculty_name, Advisors.advisor_name, Students.last_name, Students.first_name;


--


-- Task 8

SELECT
    StudentGroups.group_name,
    COUNT(Students.student_id) AS member_count
FROM
    StudentGroups
LEFT JOIN
    Students ON StudentGroups.group_id = Students.member_of
GROUP BY
    StudentGroups.group_name
ORDER BY
    member_count DESC;

--


-- Task 9

SELECT
    housing_id,
    building_name,
   (SUM(current_occupancy) * 100.0 / SUM(capacity)) AS occupancy_rate
FROM
    Housing
GROUP BY
    housing_id, building_name
ORDER BY
    housing_id;

--


-- Task 10

SELECT
    Students.class_year,
    AVG(MealPlans.price) AS average_meal_cost
FROM
    Students
JOIN
    MealPlans ON Students.class_year = MealPlans.meal_for
GROUP BY
    Students.class_year;


--

-- Task 11 

SELECT
    Departments.department_name,
    SUM(StudentFees.tuition_fee) AS total_tuition_revenue
FROM
    Departments
JOIN
    Courses ON Departments.department_id = Courses.department_id
JOIN
    Enrollments ON Courses.course_name = Enrollments.course_name
JOIN
    StudentFees ON  Enrollments.student_id = StudentFees.student_id
GROUP BY
    Departments.department_id, Departments.department_name
ORDER BY
    total_tuition_revenue DESC;

--


-- Task 12

SELECT COUNT(resource_id) AS total_resources
FROM Library;

SELECT COUNT(resource_id) AS checked_resources
FROM Library
WHERE checkout_status = 'Checked Out';



--


-- Task 13

SELECT
    SUM(total_visits) AS total_visits_sum,
    AVG(visit_duration_minutes) AS average_duration
FROM HealthServices;


--


-- Task 14

SELECT
    Departments.department_name,
    StudentAchievements.achievement_type,
    StudentAchievements.achievement_description,
    StudentAchievements.award_name,
    StudentAchievements.award_date
FROM
    StudentAchievements
JOIN
    Departments ON StudentAchievements.department_id = Departments.department_id
ORDER BY
    Departments.department_name, StudentAchievements.award_date DESC;


--


-- Task 15

SELECT
    COUNT(DISTINCT Students.student_id) AS total_students,
    COUNT(DISTINCT Internships.student_id) AS students_with_internships,
    CONCAT(ROUND((COUNT(DISTINCT Internships.student_id) * 100.0 / COUNT(DISTINCT Students.student_id)), 2), '%') AS internship_percentage
FROM
    Students
LEFT JOIN
    Internships ON Students.student_id = Internships.student_id;


--


-- Task 16

SELECT
    StudyAbroad.country,
    COUNT(DISTINCT StudyAbroad.student_id) AS students_count
FROM
    StudyAbroad
GROUP BY
    StudyAbroad.country;


--


-- Task 17

SELECT
    event_name,
    event_date,
    event_location,
    organizer,
    description
FROM
    StudentEvents
WHERE
    isUpcoming = true
ORDER BY
    event_date;


--


-- Task 18

SELECT
    Departments.department_name,
    COUNT(alumni_id) AS employed_alumni_count
FROM
    Alumni
JOIN
    Departments ON Alumni.department_id = Departments.department_id
WHERE
    Alumni.employment_status = 'Employed'
GROUP BY
    Departments.department_name
ORDER BY
    employed_alumni_count DESC;

--


-- Task 19

SELECT Instructors.name AS faculty_member, Instructors.research_area
FROM Instructors
WHERE research_area IS NOT NULL;


--


-- Task 20 Нужно будет поменять таблицы и добавить года разные для наглядности 

SELECT
    EXTRACT(YEAR FROM enrollment_date) AS enrollment_year,
    SUM(registered_students) AS total_registered_students
FROM
    Enrollments
GROUP BY
    enrollment_year
ORDER BY
    enrollment_year;

--


-- Task 21

SELECT
    Transcripts.student_id,
    Courses.course_name,
    CASE
        WHEN Transcripts.LetterGrade != 'F' AND Transcripts.gpa_for_course > 0 THEN TRUE
        ELSE FALSE
    END AS prerequisites_perfoms
FROM Transcripts
JOIN Courses ON Transcripts.course_name = Courses.course_name
WHERE Courses.isAdvanced = TRUE;

--


-- Task 22

SELECT
    student_id,
    (tuition_fee + student_fee + dorm_fee + food_fee) AS total_amount_owed,
    payment_status
FROM StudentFees
WHERE payment_status = 'Unpaid';


--


-- Task 23

SELECT 
    Instructors.instructor_id,
    Instructors.name AS instructor_name,
    Instructors.course_term,
    STRING_AGG(Courses.course_name, ', ') AS list_of_courses
FROM Instructors
JOIN Courses ON Instructors.course_term = Courses.term AND Instructors.course_name = Courses.course_name
GROUP BY Instructors.instructor_id, instructor_name, Instructors.course_term
HAVING COUNT(Instructors.course_name) > 1;


--


-- Task 24

SELECT
    gender,
    COUNT(*) AS count
FROM Students
GROUP BY gender;


SELECT
    ethnicity,
    COUNT(*) AS count
FROM Students
GROUP BY ethnicity;


SELECT
    nationality,
    COUNT(*) AS count
FROM Students
GROUP BY nationality;


--


-- Task 25

SELECT
    student_id,
    STRING_AGG(course_name, ', ' ORDER BY course_name) AS course_combination,
    COUNT(DISTINCT course_name) AS course_count
FROM Enrollments
GROUP BY student_id
HAVING COUNT(DISTINCT course_name) > 1
ORDER BY course_count DESC;


--


-- Task 26

SELECT
    Faculty.advisor_id AS faculty_advisor,
    Advisors.advisor_name,
    ROUND(AVG(Transcripts.gpa_for_course), 2) AS average_gpa
FROM Faculty
JOIN Advisors ON Faculty.advisor_id = Advisors.advisor_id
JOIN Students ON Advisors.student_id = Students.student_id
JOIN Transcripts ON Students.student_id = Transcripts.student_id
GROUP BY Faculty.advisor_id, Advisors.advisor_name
ORDER BY average_gpa DESC;

--


-- Task 27 

SELECT
    StudentGroups.group_name,
    STRING_AGG(Students.first_name, ', ') AS studen_names,
    STRING_AGG(Students.major, ', ') AS major_groups
FROM
    StudentGroups
JOIN
    Students ON StudentGroups.group_id = Students.member_of
GROUP BY
    StudentGroups.group_name
HAVING
    COUNT(DISTINCT Students.major) > 1	
ORDER BY
    StudentGroups.group_name;

--


-- Task 28

SELECT
    Courses.course_id,
    Courses.course_name,
    ROUND(AVG(Enrollments.registered_students), 2) AS average_enrollment
FROM Courses
JOIN Enrollments ON Courses.course_name = Enrollments.course_name
GROUP BY Courses.course_id, Courses.course_name
HAVING AVG(Enrollments.registered_students) > 100;


--


-- Task 29

SELECT
    Students.major,
    AVG(EXTRACT(YEAR FROM AGE(COALESCE(Graduation.graduation_date, DegreeProgress.expected_graduation_date), Admissions.admission_date))) AS average_graduation_time
FROM Students
JOIN Admissions ON Students.student_id = Admissions.student_id
LEFT JOIN DegreeProgress ON Students.student_id = DegreeProgress.student_id
LEFT JOIN Graduation ON Students.student_id = Graduation.student_id
GROUP BY Students.major;


--


-- Task 30

SELECT
    CASE WHEN Internships.endedIntern = TRUE THEN 'Ended Internship' ELSE 'Didnt end Internship' END AS internship_status,
    CONCAT(ROUND(AVG(CAST(Graduation.isGraduated AS INT)) * 100, 2), '%') AS graduation_rate
FROM
    Internships
JOIN
    Graduation ON Internships.student_id = Graduation.student_id
GROUP BY
    internship_status;


--
