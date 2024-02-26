-- 25 practical  questions --

-- 1st question --
create table students(Id int,name varchar(20),age int);

-- 2.add a new column "GRADE"(varchar) to the "students" table --
alter table students add grade varchar(10);
desc students;

-- 3.Rename the "GRADE" column to "FINALGRADE" --
alter table students rename column grade to finalgrade;
desc students;

-- 4.Insert the values --
insert into students values(101,'Raju',28,'A'),
(102,'Arun',29,'B'),
(103,'Subi',21,'C'),
(104,'Sneha',23,'B'),
(104,'Priya',24,'C'),
(105,'Kaviya',26,'A'),
(106,'Sabu',27,'B'),
(107,'Afra',29,'A'),
(108,'Nithya',27,'C'),
(109,'Mahesh',20,'B'),
(110,'Nandhini',21,'A');
select * from students;

-- 5.update the age of student with Id 101 to 21 --
update students set age=21 where id=101;
select * from students;

-- 6.delete the students with ID 103 from the 'STUDENTS' Table --
delete from students where id=103;
select * from students;

-- 7.retreive all students aged 19 or older --
select * from students where age>=19;

-- 8.retreive students named 'AFRA'or'PRIYA'--
select * from students where name='afra' or  name='priya';  -- 1st way
select * from students where name in('afra','priya');  -- 2nd way

-- 9.retreive students with grades 'A' or 'B' and age 20 or older --
select * from students where finalgrade='A'or finalgrade='B' and age>=20;

-- 10. retreive students aged between 20 and 25 --
select * from students where age between 20 and 25;

-- 11.retreive students with ages less than 18 --
select * from students where age<24;

-- 12. retreive students with grades greater than 'C' --
select * from students where finalgrade>'B';

-- 13.count the total number of students --
select count(name) Total from students;

-- 14.calculate the average age of students --
select avg(age) from students;

-- 15.find the sum of ages for students with grades 'A' or 'B' --
select sum(age) from students where finalgrade='A' or finalgrade='B';

-- 16. Group students by grade and count the no of students in each grade --
select count(*),finalgrade from students group by finalgrade order by finalgrade;

-- 17.Group students by age and calculate the average age in each group --
select avg(age),age from students group by age;

-- 18.find the grade witH the highest number of students --
select count(*),finalgrade from students group by finalgrade order by count(*) desc limit 1;

-- 19.find grade with an average age greater than 25 --
select avg(age),finalgrade from students group by finalgrade having avg(age)>25 ;

-- 20.find grades with fewer than 3 students --
select count(*),finalgrade from students group by finalgrade having count(*)<3;

-- 21.find grades with an average age between 21 and 26 --
select avg(age),finalgrade from students group by finalgrade having avg(age) between 21 and 26;

-- 22.list all students in ascending order of age --
select * from students order by age;

-- 23.list students with grades 'A' or 'B' in descending order of age --
select name,age,finalgrade from students where finalgrade='A' or finalgrade='B' order by age desc;

-- 24.sort the students by grade in alphabetical order --
select * from students order by finalgrade;

-- 25.delete the students with ID 104 with the students table --
delete from students where id=104; 
select * from students;