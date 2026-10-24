PRAGMA foreign_keys = ON;

-- Drop students first because students depends on courses.
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- TODO 1:
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
credits INTEGER CHECK ( credits > 0 ));
-- Create the courses table.
-- It must contain:
-- course_id   INTEGER primary key
-- course_name TEXT, required
-- credits     INTEGER, must be greater than 0
-- Hint: look up PRIMARY KEY, NOT NULL and CHECK.



-- TODO 2:
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK ( age >= 18),
    course_id INTEGER NOT NULL,
    FOREIGN KEY (course_id) references  courses(course_id)
);
INSERT INTO students (id, name, email, age, course_id)
VALUES
    (001, Mark, mark@gmail.com, 18,1),
    (002, Arthur, arthur@gmail.com, 22, 1),
    (003,Alex, alex@gmail.com, 20, 1),
    (004, Janis, janis@gmail.com, 21, 2),
    (005, Maria, maria@gmail.com, 25, 2);
-- Create the students table.
-- It must contain:
-- id        INTEGER primary key
-- name      TEXT, required
-- email     TEXT, required and unique
-- age       INTEGER, must be 18 or older
-- course_id INTEGER, required
-- course_id must be a foreign key that references courses(course_id).
-- Hint: look up UNIQUE and FOREIGN KEY ... REFERENCES ...


