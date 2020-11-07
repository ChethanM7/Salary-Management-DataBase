/* Aggregate queries */

SELECT SUM(pay_amt) FROM transactn

SELECT SUM(net_pay) FROM salary

SELECT amount FROM funds

SELECT AVG(net_pay) FROM salary  
SELECT AVG(pay_amt) FROM transactn

SELECT MAX(net_pay) from salary

/* nested queries */


SELECT e_id,ename from employee where hr in
	(SELECT hr_id from HR where hr_id = '1');

SELECT t_id, employ from transactn where pay_amt in
	(SELECT MAX(net_pay) from salary);

/*INNER JOIN */

SELECT 
	t2.t_id as Transaction_id, t2.pay_date as PAY_DATE, t2.pay_amt as Salary,
	t1.ename as Employee_Name from
	transactn t2
	INNER JOIN employee t1
	ON t2.employ like t1.e_id

/* OUTER JOIN */

SELECT 
	t2.e_id as Emp_id, t2.ename as EMP_NAME, t1.hr_name as HR
	from
	employee t2
	FULL OUTER JOIN HR t1
	ON t1.hr_id like t2.hr

