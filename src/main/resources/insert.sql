PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

insert into courses (course_id, course_name, credits)
values
    (1, 'Java', 5),
    (2, 'Databases', 4),
    (3, 'Web Development', 3);

-- Insert 3 courses.
-- Remember:
-- course_id is a number.
-- course_name must be present.
-- credits must be greater than 0.
-- Hint: INSERT INTO table (columns) VALUES (row 1), (row 2), ...


insert into students (id, name, email, age, course_id)
values
    (1, 'Mark', 'mark@gmail.com', 18, 1),
    (2, 'Arthur', 'arthur@gmail.com', 22, 1),
    (3, 'Alex', 'alex@gmail.com', 20, 1),
    (4, 'Janis', 'janis@gmail.com', 21, 2),
    (5, 'Maria', 'maria@gmail.com', 25, 2);
-- Insert 5 students.
-- Remember:
-- id is a number.
-- name must be present.
-- email must be unique.
-- age must be 18 or older.
-- course_id must exist in the courses table.




-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
--INSERT INTO students (id, name, email, age, course_id)
--VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);
