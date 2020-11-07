create trigger 
tg2 on employee
after insert
as
declare @log_action varchar(20);
declare @e_id varchar(11);
declare @ename varchar(25);
declare @mobile_no varchar(11);
declare @dno varchar(7);
declare @city varchar(25);
declare @St varchar(25);
declare @hr varchar(11);

select 
@e_id = i.e_id, @ename=i.ename, @mobile_no=i.mobile_no,
@dno=i.dno, @city=i.city, @St=i.St, @hr=i.hr from inserted i;

set @log_action='inserted record';
insert into salary values('7',@e_id,'5767453526',19000,1000,20000);

insert into employee values('9','charan','8778487875','7/3F','Bangalore','KA','1');

select * from salary