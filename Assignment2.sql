create database SISDB;

use SISDB;

--DDL
--Creating the Students table
create table Students (
	student_id int primary key,
	first_name varchar(35),
	last_name varchar(35),
	date_of_birth date,
	email varchar(50),
	phone_number varchar(13)
);

--Creating the Courses table
create table Courses(
	course_id int primary key,
	course_name varchar(50),
	credits int,
	teacher_id int,
	constraint FK_TeacherID foreign key (teacher_id) references Teacher(teacher_id)
);

--Creating the Enrollments table
create table Enrollments(
	enrollment_id int primary key,
	student_id int,
	course_id int,
	enrollment_date date,
	constraint FK_StudentID foreign key (student_id) references Students(student_id),
	constraint FK_CourseID foreign key (course_id) references Courses(course_id)
);

--Creating the Teacher table
create table Teacher(
	teacher_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(255)
);

--Creating the Payments table
create table Payments(
	payment_id int primary key,
	student_id int,
	amount int,
	payment_date datetime
	constraint FK_PaymentsStudentID foreign key (student_id) references Students(student_id)
);

-- Adding constraints
alter table Students add constraint CHK_StudentEmail check(email like '%_@__%.__%');
alter table Teacher add constraint CHK_TeacherEmail check(email like '%_@__%.__%');
alter table Courses add constraint UQ_CourseName unique (course_name);

-- DML-(a) (Inserting sample data)
insert into Students values (1001, 'Adams', 'Baker', '2001-12-04', 'adamsbaker@hotmail.com', '+917854659854');
insert into Students values (1002, 'Clark', 'Davis', '2002-08-26', 'clarkdavis@gmail.com', '+918684512345');
insert into Students values (1003, 'Frank', 'Evans', '2000-02-15', 'frankevans@gmail.com', '+919532145678');
insert into Students values (1004, 'Irwin', 'Hills', '2001-01-09', 'irwinhills@gmail.com', '+916412358945');
insert into Students values (1005, 'Klein', 'Jones', '2002-05-30', 'kleinjones@gmail.com', '+916547465895');
insert into Students values (1006, 'Mason', 'Lopez', '2000-07-14', 'masonlopez@gmail.com', '+91984562153');
insert into Students values (1007, 'Quinn', 'Smith', '2001-09-21', 'quinnsmith@gmail.com', '+918456851235');
insert into Students values (1008, 'Usman', 'Patel', '2001-03-16', 'usmanpatel@gmail.com', '+918645234645');
insert into Students values (1009, 'Valdo', 'White', '2002-10-31', 'valdowhite@gmail.com', '+917564123945');
insert into Students values (1010, 'Yakub', 'Zafar', '2001-04-28', 'yakubzafar@gmail.com', '+919564821634');

insert into Teacher values (2001, 'Salvador', 'Kennedy', 'salvadorkennedy@gmail.com');
insert into Teacher values (2002, 'Barb', 'Rhodes' , 'barbrhodes@gmail.com');
insert into Teacher values (2003, 'Bud', 'Whitney', 'budwhitney@gmail.com');
insert into Teacher values (2004, 'Brett', 'Osborne', 'brettosborne@gmail.com');
insert into Teacher values (2005, 'Carlton', 'Levy', 'carltonlevy@gmail.com');
insert into Teacher values (2006, 'Pete', 'Cahill', 'petecahill@gmail.com');
insert into Teacher values (2007, 'Brian', 'Wiley', 'brianwiley@gmail.com');
insert into Teacher values (2008, 'Leah', 'Dunbar', 'leahdunbar@gmail.com');
insert into Teacher values (2009, 'Elsa', 'Stephenson', 'elsastephenson@gmail.com');
insert into Teacher values (2010, 'Alisha', 'Moor', 'alishamoor@gmail.com');
insert into Teacher values (2011, 'Osborne', 'Kennedy', 'okennedy@gmail.com');

insert into Courses values (3001, 'Business', 20, 2008);
insert into Courses values (3002, 'Computer Science', 25, 2002);
insert into Courses values (3003, 'Biology', 50, 2009);
insert into Courses values (3004, 'Chemistry', 40, 2003);
insert into Courses values (3005, 'Communications', 60, 2005);
insert into Courses values (3006, 'Finance', 50, 2001);
insert into Courses values (3007, 'Accounting', 55, 2010);
insert into Courses values (3008, 'Design', 45, 2004);
insert into Courses values (3009, 'Mathematics', 40, 2006);
insert into Courses values (3010, 'Architecture', 40, 2007);

insert into Enrollments values (4001, 1009, 3005, '2021-05-05');
insert into Enrollments values (4002, 1002, 3006, '2021-06-24');
insert into Enrollments values (4003, 1007, 3001, '2021-07-20');
insert into Enrollments values (4004, 1004, 3009, '2021-07-23');
insert into Enrollments values (4005, 1005, 3006, '2021-07-25');
insert into Enrollments values (4006, 1006, 3002, '2022-05-08');
insert into Enrollments values (4007, 1003, 3010, '2022-05-13');
insert into Enrollments values (4008, 1008, 3010, '2022-05-19');
insert into Enrollments values (4009, 1001, 3005, '2023-06-07');
insert into Enrollments values (4010, 1010, 3003, '2023-06-24');

insert into Payments values (5001, 1009, 100759, '2021-05-05 15:08:08');
insert into Payments values (5002, 1002, 65348, '2021-06-24 04:43:11');
insert into Payments values (5003, 1007, 42561, '2021-07-20 10:58:29');
insert into Payments values (5004, 1004, 10653, '2021-07-23 16:00:43');
insert into Payments values (5005, 1005, 51487, '2021-07-25 10:08:40');
insert into Payments values (5006, 1006, 168430, '2022-05-08 15:37:58');
insert into Payments values (5007, 1003, 70000, '2022-05-13 12:16:54');
insert into Payments values (5008, 1008, 59000, '2022-05-19 15:10:08');
insert into Payments values (5009, 1001, 80778, '2023-06-07 12:24:23');
insert into Payments values (5010, 1009, 25600, '2023-06-08 13:35:25');
insert into Payments values (5011, 1002, 39478, '2023-06-10 13:50:56');
insert into Payments values (5012, 1006, 60090, '2023-06-11 14:10:12');
insert into Payments values (5013, 1001, 47648, '2023-07-11 14:26:49');
insert into Payments values (5014, 1004, 19658, '2023-07-14 15:43:57');
insert into Payments values (5015, 1006, 10568, '2023-07-09 17:08:43');


-- Task 2 - 1
insert into  Students values (1011, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');

-- Task 2 - 2
insert into Enrollments values (4011, 1007, 3003, '2023-06-25');

-- Task 2 - 3
update Teacher set email = 'skennedy@gmail.com' where teacher_id = 2001;
select * from Teacher;

-- Task 2 - 4
delete from Enrollments where student_id=1001 and course_id=3005;

select course_id, count(student_id) from Enrollments group by course_id;

-- Task 2 - 5
insert into Courses values (3011, 'Zoology', 48, 2004);

-- Task 2 - 6
declare @StudentID int;
set @StudentID = 1006;
delete from Enrollments where student_id=@StudentID
delete from Students where student_id=1006

-- Task 2 - 7
update Payments set amount = 28700 where payment_id=5015;
select * from Payments where payment_id=5015;

-- Task 3 - 1
declare @StudentIDToSearch int
set @StudentIDToSearch = 1005
select sum(P.amount) [Total Payments] from Payments as P 
left join Students as S on P.student_id = S.student_id 
where S.student_id=@StudentIDToSearch;

-- Task 3 - 2
select course_name, count(student_id) [Students Enrolled] 
from Courses as C 
left join Enrollments as E on E.course_id = C.course_id
group by C.course_name;

-- Task 3 - 3
select (select first_name + ' ' + last_name from Students 
where S.student_id=Students.student_id) as [Not Enrolled in Any Course]
from Students as S left join Enrollments as E on S.student_id = E.student_id 
group by S.student_id having count(E.enrollment_id) = 0;

-- Task 3 - 4
select S.first_name, S.last_name, C.course_name from Students as S 
left join Enrollments as E on S.student_id = E.student_id
left join Courses as C on E.course_id = C.course_id;

-- Task 3 - 5
select (T.first_name + ' ' + T.last_name) as [Teacher Name], C.course_name as [Course Name] 
from Teacher as T 
right join Courses as C on T.teacher_id = C.teacher_id;

-- Task 3 - 6
select (S.first_name + ' ' + S.last_name) as [Student Name], E.enrollment_date, C.course_name
from Students as S 
right join Enrollments as E on S.student_id = E.student_id
left join Courses as C on E.course_id = C.course_id;

-- Task 3 - 7
select first_name, last_name 
from Students 
left join Payments on Students.student_id = Payments.student_id 
where Students.student_id not in (select student_id from Payments);

-- Task 3 - 8
select C.course_id, C.course_name 
from Courses as C 
left join Enrollments as E on  C.course_id = E.course_id 
where C.course_id not in (select course_id from Enrollments);

-- Task 3 - 9
select distinct E1.student_id 
from Enrollments as E1 
join Enrollments as E2 on E1.student_id=E2.student_id and E1.course_id <> E2.course_id;

-- Task 3 - 10
select T.* from Teacher as T 
left join Courses as C on T.teacher_id = C.teacher_id 
where T.teacher_id not in (select teacher_id from Courses);


-- Task 4 - 1
select (select count(student_id) from Students) / (select count(distinct course_id) from Enrollments);

-- Task 4 - 2
select top 1 (select first_name from Students where student_id=Payments.student_id) [First Name], 
(select first_name from Students where student_id=Payments.student_id) [Last Name], sum(amount) as Amount 
from Payments group by student_id order by Amount desc ;

-- Task 4 - 3
select course_id, count(student_id) as [Total Enrollments] 
from Enrollments 
group by course_id 
order by [Total Enrollments] desc;

-- Task 4 - 4
select (select first_name + ' ' + last_name from Teacher where teacher_id=C.teacher_id) [Name of Teacher], 
sum(amount) [Payments Made] from Enrollments as E 
left join Payments as P on E.student_id = P.student_id
left join Courses as C on E.course_id = C.course_id
group by teacher_id;

-- Task 4 - 5
select student_id from Enrollments where student_id = all(select student_id from students);

-- Task 4 - 6
select * from Teacher where teacher_id not in (select teacher_id from Courses);

-- Task 4 - 7
select sum(DATEDIFF(yyyy, date_of_birth, getdate()))/count(*) as [Average Age of Students] 
from Students;

-- Task 4 - 8
select * from Courses where course_id not in (select course_id from Enrollments);

-- Task 4 - 9
select (select first_name + ' ' +last_name from Students where student_id = Payments.student_id) as [Name of Student], 
sum(amount) as [Total Amount] 
from Payments 
group by student_id;

-- Task 4 - 10
select student_id, count(payment_id) as [Number of Payments] 
from Payments 
group by student_id 
having count(payment_id) > 1;

-- Task 4 - 11
select (select first_name + ' ' +last_name from Students where student_id=P.student_id) as [Student Name], 
sum(P.amount) as [Total Payments] 
from Students as S 
join Payments as P on S.student_id = P.student_id 
group by P.student_id;

-- Task 4 - 12
select course_name, count(*) as [Number of Students Enrolled] 
from Enrollments as E 
left join Courses as C on E.course_id=C.course_id 
group by C.course_name;

-- Task 4 - 13
select (select first_name + ' ' + last_name from Students where student_id=S.student_id) as [Student Name], 
avg(P.amount) as [Average Payment]
from Students S 
right join Payments P on S.student_id=P.student_id 
group by S.student_id;
