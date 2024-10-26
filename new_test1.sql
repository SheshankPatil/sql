create database college;

use college;

create table student_info(

rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);


create table teacher(
tr_id	int primary key,
name varchar(50),
dep_id int, 
foreign key(dep_id) references dep(id)
on update cascade
on delete cascade);

create table dep(
id int primary key,
name varchar(50));

insert into student_info values
(1,"sheshank",100,"S","hubli"),
(2,"Karan",90,"A","banglore"),
(3,"arjun",60,"E","pune"),
(4,"ramesh",77,"B","hubli"),
(5,"suresh",90,"A","pune");

drop table student_info;
-- use of greater than less than or equal to
select name from student_info where marks>70 and city="pune";
-- use of between to find the in between range 
select name from student_info where marks between 50 and 90;
-- use of not in to find excluding the range or places  
select*from student_info where city not in ("hubli","kar"); 
-- use of limit to limit the answers and find the top most for smtg
select*from student_info where marks>80 limit 5;

-- to get the order or arrange the answer in ascendign or deScinding  
select*from student_info order by city desc;

-- combination of ascending and and limit func
select*from student_info order by marks desc limit 5;

-- use of fuctions max() min() avg() count() sum()
select sum(marks) from student_info;

-- use of group by to get the count of students from a particular city
select city,name, avg(marks) 
from student_info group by city,name;


select city,avg(marks) 
from student_info group by city order by city asc;
 
 
select city,max(marks) from student_info group by city order by city asc;
 
select name from student_info  where city not in ("hubli");



select count(name),city from student_info group by city having max(marks)>80;


select distinct city from student_info;

update student_info
set grade="A"
WHERE marks between 80 and 90; 

insert into student_info values(6,"mahesh",85,"X","HUBLI");
select * from student_info;

delete from student_info where marks<61;





-- foregin key implimentation and use of cascading

insert into dep values
(1,"english"),
(2,"kannada"),
(3,"hindi"); 

insert into teach values
(1,"shambu",2),
(2,"jyoti",3),
(3,"suresh",2),
(4,"jaden",1);

select * from teach;
select * from dep;

update dep
set id=2
where id=10;


alter table teacher
add age int;

alter table teach
drop column age;

truncate teach;

alter table  student_info
change name full_name varchar(50);

select *from student_info;

alter table student_info
drop column grade;

delete from student_info where marks<80;











