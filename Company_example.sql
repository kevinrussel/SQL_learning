-- creating the employee table

create table Employee(
    emp_id int Primary key,
    first_name varchar(20),
    last_name varchar (20),
    birth_date DATE,
    sex varchar (1),
    salary int,
    super_id int,
    branch_id int
);

create table Branch(
    branch_id int primary key,
    branch_name varchar(20),
    mgr_id int,
    mgr_start_date date,
    foreign key(mgr_id) references employee(emp_id) on delete set null

);

alter table employee
Add foreign key (branch_id)
references branch(branch_id)
on delete set null;

alter table employee
add foreign key (super_id)
references employee(emp_id)
on delete set null;


create table client(
    client_id int,
    client_name varchar(20),

    branch_id int,

    foreign key(branch_id) references branch(branch_id) on delete set null
);


create table Works_With(

);