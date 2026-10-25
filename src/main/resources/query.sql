PRAGMA foreign_keys = ON;

-- TODO 1:
-- Select all courses.
       SELECT * FROM courses;



-- TODO 2:
-- Select all students.
    SELECT * FROM students;



-- TODO 3:
-- Select students older than 20.
-- Hint: use WHERE.
    SELECT  * FROM students
    WHERE age > 20;



-- TODO 4:
    SELECT students.name, students.email, students.age, courses.course_name
    FROM students
    JOIN courses ON students.course_id = courses.course_id;
-- Show student names together with course names.
-- Show: student name, email, age and course name.
-- Hint: use JOIN ... ON students.course_id = courses.course_id



-- TODO 5:

    SELECT courses.course_id, courses.course_name,
           COUNT(students.id) AS student_count

    FROM courses
    LEFT JOIN students ON courses.course_id = students.course_id
    GROUP BY courses.course_id, courses.course_name
    ORDER BY courses.course_id;
-- Count how many students are in each course.
-- Courses with 0 students should also be shown.
-- Hint: use COUNT, LEFT JOIN and GROUP BY.



-- TODO 6:
    UPDATE  students
    SET age = 19
    WHERE id =1;

SELECT * FROM students
WHERE id =1;

-- Update the first student's age.
-- Then select that student to check the update.
-- Hint: use UPDATE ... SET ... WHERE ...



-- TODO 7:

update students
set course_id = 2
where id = 2;
select students.name, courses.course_name
from students
join courses ON students.course_id = courses.course_id;
-- Move the second student to a different course.
-- Then check the update using JOIN to show the new course name.



-- TODO 8:

delete from  students
where id = 5;


-- Delete one student.
-- Hint: do not forget the WHERE clause, or every student will be deleted!



-- TODO 9:
    select students.id,
           students.name,
           students.email,
           students.age,
           courses.course_name

    from students
    join courses ON students.course_id = courses.course_id
    order by students.id;
-- Check the final result.
-- Show id, name, email, age and course name for every student, ordered by id.
-- Hint: use JOIN and ORDER BY.


