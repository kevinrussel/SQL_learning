
Drop table student;

create table student (
    sutdent_id int auto_increment Primary key,
    name VARCHAR(20) not null,
    major varchar(20) unique
);

select * from student;


insert into student(name,major) values ('jack',"biology");
insert into student values (2,"james","bio");
