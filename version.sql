use threetables;
create view is_student 
as 
select Sno,Sname,Sage
from student
where Sdept = "IS";

create view is_student
as 
select Sno,Sname,Sage
from student
where Sdept = 'IS';

create view is_s1(Sno,Sname,Grade)
as 
select Student.Sno,Sname,Grade
from student,grade
where Sdept = 'IS' and
		Student.Sno = grade.Sno and
		grade.Cno = "1";
        
create view is_s2 
as 
select Sno,Sname,grade
from is_s1	
where grade >= 90;

create view BT_S(Sno,Sname,Sbirth)
as 
select Sno,Sname,year(now()) - Sage
from student;

create view S_G(Sno,Gavg)
as
select Sno,AVG(grade)
from grade
group by Sno;

create view F_student(F_Sno,name,sex,age,dept)
as 
select *
from student
where Ssex = "女";

select is_student.Sno,Sname
from is_student,grade
where is_student.Sno = grade.Sno and grade.Cno = 1;

select * 
from S_G
where Gavg >= 90;

update is_student
set Sname = '刘辰'
where Sno = '201215125';

INSERT INTO is_student (Sno, Sname, Sage)
VALUES ('201215129', '赵新', 20);
	
update S_G
set Gavg = 90
where Sno = '201215121'