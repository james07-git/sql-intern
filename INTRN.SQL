DROP DATABASE student_db;
CREATE DATABASE student_db;
USE student_db;
-- Use existing DB (skip if you're dropping and recreating)
USE student_db;

-- Now create the tables
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    class VARCHAR(20),
    roll_no INT,
    gender VARCHAR(10)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    max_marks INT DEFAULT 100,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    total_classes INT,
    attended_classes INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
INSERT INTO students (name, class, roll_no, gender) VALUES
('Arun Kumar', '10-A', 1, 'Male'),
('Divya Sharma', '10-A', 2, 'Female'),
('Rahul Raj', '10-A', 3, 'Male');

-- Insert into subjects
INSERT INTO subjects (subject_name) VALUES
('Mathematics'),
('Science'),
('English'),
('Social Studies');

-- Insert marks
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(1, 1, 88), (1, 2, 75), (1, 3, 92), (1, 4, 81),
(2, 1, 95), (2, 2, 89), (2, 3, 84), (2, 4, 90),
(3, 1, 60), (3, 2, 55), (3, 3, 70), (3, 4, 65);

-- Insert attendance
INSERT INTO attendance (student_id, subject_id, total_classes, attended_classes) VALUES
(1, 1, 50, 47), (1, 2, 50, 45), (1, 3, 50, 48), (1, 4, 50, 46),
(2, 1, 50, 50), (2, 2, 50, 49), (2, 3, 50, 50), (2, 4, 50, 48),
(3, 1, 50, 40), (3, 2, 50, 35), (3, 3, 50, 45), (3, 4, 50, 42);
SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM marks;
SELECT * FROM attendance;

