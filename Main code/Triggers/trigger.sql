create trigger tg1 on employee
after insert 
as
begin
	select * from employee
	end


insert into employee values('8','Rakesh','7778487775','7/3F','Bangalore','KA','1');
