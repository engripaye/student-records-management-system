-- Insert sample students
INSERT INTO students (first_name, last_name, email, enrollment_year) VALUES
                                                                         ('John', 'Doe', 'john.doe@email.com', 2022),
                                                                         ('Jane', 'Smith', 'jane.smith@email.com', 2021),
                                                                         ('Michael', 'Brown', 'michael.brown@email.com', 2023);

-- Insert sample courses
INSERT INTO courses (course_name, course_code, credits) VALUES
                                                            ('Database Systems', 'CS101', 3),
                                                            ('Algorithms', 'CS102', 4),
                                                            ('Operating Systems', 'CS103', 3);

-- Insert enrollments
INSERT INTO enrollments (student_id, course_id, grade) VALUES
                                                           (1, 1, 'A'),  -- John Doe in Database Systems
                                                           (1, 2, 'B'),  -- John Doe in Algorithms
                                                           (2, 1, 'C'),  -- Jane Smith in Database Systems
                                                           (3, 3, 'A');  -- Michael Brown in Operating Systems
