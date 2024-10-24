create table course_info(
course_id int,
course_name varchar(20),
credit double,
course_teacher varchar(20)
);
insert into course_info(course_id,course_name,credit,course_teacher)
values(101,"Fundamental Computer",2.00,"Adiba Mahjabin Nitu"),
(103,"Discrete Mathematics",3.00,"Rashedul Islam"),
(153,"DLD",3.00,"Abdullah Al Mamun"),(255,"Algorithm",3.00,"Sumya Akter"),
(301,"Database",3.00,"Sumya Akter");
select * from course_info;
-- Q1
select course_name from course_info;

-- Q2
 select distinct credit  from course_info;
 select count(distinct credit) as CREDIT from course_info;
 
 -- Q3
 Alter table course_info
 add column routine varchar(10);
 
 Alter table course_info
 modify credit int;
 select * from course_info;
 
