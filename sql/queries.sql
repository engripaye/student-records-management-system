-- List all students with their courses and grades
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
         JOIN students s ON e.student_id = s.student_id
         JOIN courses c ON e.course_id = c.course_id
ORDER BY s.last_name;

-- Get GPA-like summary per student (A=4, B=3, C=2, D=1, F=0)
SELECT s.first_name, s.last_name,
       ROUND(AVG(
                     CASE e.grade
                         WHEN 'A' THEN 4
                         WHEN 'B' THEN 3
                         WHEN 'C' THEN 2
                         WHEN 'D' THEN 1
                         WHEN 'F' THEN 0
                         END
             ),2) AS gpa
FROM students s
         JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id;

-- Count students per course
SELECT c.course_name, COUNT(e.student_id) AS student_count
FROM courses c
         LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
