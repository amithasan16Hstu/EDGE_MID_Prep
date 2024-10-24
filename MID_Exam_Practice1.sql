create table student_info(
std_id int not null,
std_name varchar(20),
department varchar(20),
cgpa double,
primary key(std_id)
);
insert into student_info(std_id,std_name,department,cgpa)
values(2102043,"Amit","CSE",3.956),(2102044,"Porag","CSE",3.456),(2102154,"Lipa","ECE",3.765),
(2102078,"Tonik","EEE",3.345),(2102018,"Raisa","CSE",2.956),(2102020,"Samiul","CSE",3.222);
select * from student_info;
select std_name from student_info;

select std_name from student_info
where std_id=2102043;

select * from student_info
where std_id=2102154;

select * from student_info
where department="CSE" and cgpa>3.00;

select * from student_info
where department ="CSE" or department="EEE";

select * from student_info
where not department="CSE";

select * from student_info
where department="CSE"
order by cgpa;

select * from student_info
where department="CSE"
order by cgpa desc;

select * from student_info
order by cgpa desc, std_name asc; 

-- Update info
update student_info
set supervisor="Sumya Akter"
where std_id=2102043;

update student_info
set supervisor="Arshad Ali"
where std_id=2102020;

-- Delete tuple
delete from student_info
where std_id=2102018;
select * from student_info;

-- limit
select * from student_info
limit 3;

select * from student_info
where department="CSE"
limit 2;

-- Min max
select min(cgpa) AS CGPA from student_info
where department="CSE";

select max(cgpa) as CGPA from student_info
where department="CSE";

select max(cgpa) from student_info
where department="CSE"
order by std_id;

-- like
select * from student_info
where std_name like "%a";

select * from student_info
where std_name like "a%";

select * from student_info
where std_name like "%m%";

select * from student_info
where std_name like "_m%";

select * from student_info
where std_name like "%a___";

select * from student_info
where std_name not like "a%";

-- in
select * from student_info
where department in("CSE", "ECE");

-- Between
select * from student_info
where cgpa between 3.0 and 3.50;

-- Group by
select max(cgpa) from student_info
where department="CSE"
group by std_id
order by max(cgpa) desc;

-- sum avg
select sum(cgpa) from student_info
where department="CSE";


alter table student_info
add column supervisor varchar(20);
select * from student_info;

