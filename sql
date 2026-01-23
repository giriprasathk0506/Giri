create table dept( deptid number(2) constraint dept_pk primary key, deptname varchar(20), loc varchar(10));

insert into dept values (1,'cs', 'cbe');

insert into dept values(2,'cs', 'cbe');

insert into dept values(3,'it','che');

insert into dept values(4,'ct','erd');

create table empl(empid NUMBER(4) CONSTRAINT empl_pk PRIMARY KEY, empname varchar(10), deptid NUMBER(2) CONSTRAINT emp_deptid_fk REFERENCES dept(deptid));

insert into empl values(101,'aa', 1);

insert into empl values(102,'bb',2);

insert into empl values(103, 'cc', 1);

insert into empl values(104,'dd',3);

select d.deptname, e.empname from dept d join empl e on d.deptid=e.deptid where d.deptid>2 order by d.deptname;

select d.deptname, e.empname from dept d left outer join empl e on d.deptid= e.deptid where d.deptid>2 order by d.deptname;

select d.deptname, e.empname from dept d right outer join empl e on d.deptid=e.deptid where d.deptid>2 order by d.deptname;

select d.deptname, e.empname from dept d full outer join empl e on d.deptid= e.deptid where d.deptid>2 order by d.deptname;

select d.deptname, e.empname from dept d cross join empl e where d.deptid>2 order by d.deptname;