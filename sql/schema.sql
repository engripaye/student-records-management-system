-- Database Schema for Student Records Management System

-- Drop tables if they exist (for development resets)
DROP TABLE IF EXISTS enrollments CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS courses CASCADE;

-- Students Table
CREATE TABLE students (
                          student_id SERIAL PRIMARY KEY,
                          first_name VARCHAR(50) NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          email VARCHAR(100) UNIQUE NOT NULL,
                          enrollment_year INT NOT NULL
);

-- Courses Table
CREATE TABLE courses (
                         course_id SERIAL PRIMARY KEY,
                         course_name VARCHAR(100) NOT NULL,
                         course_code VARCHAR(20) UNIQUE NOT NULL,
                         credits INT NOT NULL CHECK (credits > 0)
);

-- Enrollments Table (junction for many-to-many relation)
CREATE TABLE enrollments (
                             enrollment_id SERIAL PRIMARY KEY,
                             student_id INT NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
                             course_id INT NOT NULL REFERENCES courses(course_id) ON DELETE CASCADE,
                             grade VARCHAR(2) CHECK (grade IN ('A','B','C','D','F'))
);
