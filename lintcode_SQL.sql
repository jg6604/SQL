-- 2017
INSERT INTO courses 
VALUES(14,"SQL",200,"2021-02-25",1);

-- 2021
INSERT INTO teachers
VALUES(null,"XiaoFu","XiaoFu@lintcode.com",20,"CN");

-- 2040
SELECT *
FROM courses
WHERE teacher_id!=3 AND student_count>800;

-- 1960
SELECT *
FROM courses
--WHERE created_at='2021-01-01' OR created_at='2021-01-03';
WHERE created_at in('2021-01-01','2021-01-03');

-- 1962
SELECT name
FROM courses
--WHERE teacher_id!=3 AND teacher_id!=1;
--WHERE teacher_id not in (1,3);
WHERE NOT (teacher_id=1 or teacher_id=3);

-- 1964
SELECT *
FROM courses
--WHERE student_count>=50 AND student_count<=55;
WHERE student_count between 50 and 55;

-- 1972
SELECT*
FROM teachers
WHERE country IN('CN','JP') AND email IS NOT NULL;

-- 2034
SELECT avg(age) as average_teacher_age
FROM teachers
WHERE email like '%@qq.com';

-- 1987
SELECT MAX(age) as max_age
FROM teachers
WHERE country='CN';

-- 1991
SELECT sum(student_count) as select_student_sum
FROM courses
WHERE teacher_id=3;

-- 1995
SELECT round(avg(age)) as avg_teacher_age
FROM teachers
WHERE age>20

-- 1985
--SELECT count(1) as teacher_count
--SELECT count(*) as teacher_count
SELECT count(id) as teacher_count
FROM teachers
WHERE country in('CN','UK') AND age between 20 and 28;

-- 2081
--insert current date into the table
INSERT INTO records
VALUES (curtime());

-- 2037
SELECT name,date(created_at) as created_date
FROM courses
WHERE date_format(created_at,'%Y-%m') < '2020-08';