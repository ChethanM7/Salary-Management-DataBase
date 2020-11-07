CREATE Database Salary_Management

Create table employee
(
	e_id VARCHAR(11) primary key,
	ename varchar(25) NOT NULL,
	mobile_no varchar(11) NOT NULL,
	dno varchar(10) NOT NULL,
	city varchar(20) NOT NULL,
	St varchar(25) NOT NULL,
);

Create table accountant
(
	a_id varchar(11) primary key not null,
	emp_id varchar(11) not null,
	a_name varchar(25) not null,
	
	constraint fk_emp_id
		foreign key (emp_id)
		references employee (e_id)
);

create table HR
(
	hr_id varchar(11) primary key not null,
	hr_name varchar(25) not null,
	emp_id varchar(11) not null,

	constraint fk_emp_id1
		foreign key (emp_id)
		references employee(e_id)
);



create table transactn
(
	t_id varchar(11) primary key not null,
	pay_amt int not null ,
	pay_date date not null,
	accountnt varchar(11) not null,
	employ varchar(11) not null,

	constraint ct2
		foreign key (accountnt) references accountant (a_id),
		foreign key (employ) references employee (e_id)
); 

create table funds
(
	f_id varchar(11) primary key not null,
	ac_id varchar(11) not null,
	amount int not null,

	constraint ct3
		foreign key (ac_id) references accountant(a_id)
);

create table salary
(
	s_id varchar(11) primary key not null,
	emp_id varchar(11) not null,
	account_no varchar(20) unique not null,
	basic_sal int not null,
	bonus_sal int not null,
	net_pay int  not null

	constraint new1
		foreign key (emp_id) references employee (e_id)
)

insert into employee values('1','John','8643712498','4/3A','Bangalore','KA',);
insert into employee values('2','Ram','9432117898','3/4B','Bangalore','KA',);
insert into employee values('3','Raj','9765132139','77/C','Hyderabad','TS',);
insert into employee values('4','Abdul','8866211318','8/7C','Pune','MH','1');
insert into employee values('5','Khan','8778771432','4C/7','Mumbai','MH');

select * from employee

insert into accountant values('1','3','Raj')

select * from accountant

insert into HR values('1','Khan','5')

select * from HR

insert into transactn values('1',10000,'2020-05-03','1','3')
insert into transactn values('2',5000,'2020-05-01','1','1')
insert into transactn values('3',15000,'2020-05-05','1','2')
insert into transactn values('4',20000,'2020-05-01','1','4')
insert into transactn values('5',30000,'2020-05-03','1','5')

select * from transactn

alter table employee
add constraint ck1
	foreign key (hr) references HR (hr_id)

insert into funds values ('1','1',80000)


insert into salary values ('1','5','136195',30000,0,30000)
insert into salary values ('2','4','2438142',18000,2000,20000)
insert into salary values ('3','3','176351',15000,0,15000)
insert into salary values ('4','2','3379913',4500,500,5000)
insert into salary values ('5','1','1965216',9000,1000,10000)


select * from employee
select * from accountant
select * from HR
select * from transactn
select * from funds
select * from salary

insert into employee values ('6','Kumar','9965684399','4A/C','Chennai','TN','1')