-- Import csv's as tables.

.mode csv
.import courses.csv  courses_data_raw
.import students.csv students_data_raw
.import teachers.csv teachers_data_raw
.import sections.csv sections_data_raw

-- Fill in students

INSERT INTO students (id, first_name, last_name, email, phone_number)
SELECT id, first_name, last_name, email, phone_number
FROM students_data_raw;
DROP TABLE IF EXISTS students_data_raw;

-- Fill in teachers

INSERT INTO teachers (id, first_name, last_name, bio)
SELECT id, first_name, last_name, bio FROM teachers_data_raw;
DROP TABLE IF EXISTS teachers_data_raw;

-- Fill in courses

INSERT INTO courses (id, name, description)
SELECT id, name, description FROM courses_data_raw;
DROP TABLE IF EXISTS courses_data_raw;

-- Fill in sections

INSERT INTO sections (id, time, course_id, teacher_id)
SELECT id, time, course_id, teacher_id FROM sections_data_raw;
DROP TABLE IF EXISTS sections_data_raw;
