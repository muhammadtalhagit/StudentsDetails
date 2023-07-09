 
use student;
create table studentsdetails(
StudentID int, 
Student_Name varchar(30)

);

insert into studentsdetails (StudentID,Student_Name) values 
("1001","Mary"),
("1002","Jane"),
("1003","Daniel"),
("1004","Jack"),
("1005","Harold");

-- Primary Key
alter table studentsdetails add primary key(StudentID);

create table studentsCourses(
CourseID int, 
Course_Name varchar(30),
studentID int
);

insert into studentsCourses (CourseID,Course_Name,studentID) values 
 ("5001","PHP","1004"),
 ("5002","JAVA","1004"),
 ("5003","ASP.NET","1004"),
("5004","RUBY","1004");

alter table studentsCourses add foreign key (studentID) references 
studentsdetails(StudentID);

-- THE STUDENT WHICH INROLLED IN ASP.NET
select * from studentsdetails join studentsCourses;
  select * from studentsdetails,studentsCourses where
  Course_Name ="ASP.NET";
  
  
-- Left Join 
select * from studentsdetails left join studentsCourses on 
 studentsdetails.StudentID = studentsCourses.studentID;

 -- right Join 
select * from studentsCourses right join studentsdetails on 
 studentsCourses.studentID =  studentsdetails.StudentID;

-- cross join 
select * from studentsdetails cross join studentsCourses;
 
-- Inner join
select * from studentsdetails inner join studentsCourses on 
 studentsdetails.StudentID = studentsCourses.studentID; 