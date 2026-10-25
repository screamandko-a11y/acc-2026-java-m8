PRAGMA foreign_keys = ON;

-- Drop students first because students depends on courses.
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;


create table courses (
course_id integer primary key,
course_name text not null,
credits integer check ( credits >  0 ));

-- Create the courses table.
-- It must contain:
-- course_id   INTEGER primary key
-- course_name TEXT, required
-- credits     INTEGER, must be greater than 0
-- Hint: look up PRIMARY KEY, NOT NULL and CHECK.



CREATE TABLE students (
id integer primary key,
name text not null,
email text not null unique,
age integer check (age >= 18),
course_id integer not null,
foreign key (course_id) references  courses(course_id));

-- Create the students table.
-- It must contain:
-- id        INTEGER primary key
-- name      TEXT, required
-- email     TEXT, required and unique
-- age       INTEGER, must be 18 or older
-- course_id INTEGER, required
-- course_id must be a foreign key that references courses(course_id).
-- Hint: look up UNIQUE and FOREIGN KEY ... REFERENCES ...


