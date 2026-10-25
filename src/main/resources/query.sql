PRAGMA foreign_keys = ON;

-- Select all courses.
select * from courses;


-- Select all students.
select * from courses;


-- Select students older than 20.
-- Hint: use WHERE.
select * from students
where age > 20;




select students.name, students.email, students.age, courses.course_name
from students
join courses ON students.course_id = courses.course_id;
-- Show student names together with course names.
-- Show: student name, email, age and course name.
-- Hint: use JOIN ... ON students.course_id = courses.course_id



select courses.course_id, courses.course_name,
           COUNT(students.id) AS student_count
from courses
left join students ON courses.course_id = students.course_id
group by courses.course_id, courses.course_name
order by courses.course_id;
-- Count how many students are in each course.
-- Courses with 0 students should also be shown.
-- Hint: use COUNT, LEFT JOIN and GROUP BY.




update  students
set age = 19
where id =1;
select * from students
where id =1;

-- Update the first student's age.
-- Then select that student to check the update.
-- Hint: use UPDATE ... SET ... WHERE ...



update students
set course_id = 2
where id = 2;
select students.name, courses.course_name
from students
join courses ON students.course_id = courses.course_id;
-- Move the second student to a different course.
-- Then check the update using JOIN to show the new course name.




delete from  students
where id = 5;
-- Delete one student.
-- Hint: do not forget the WHERE clause, or every student will be deleted!




select  students.id,
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


