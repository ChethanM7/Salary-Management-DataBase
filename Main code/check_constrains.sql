alter table funds
add constraint ck2
	check(amount>=0)

alter table salary
add constraint ck3
	check(basic_sal>=0),
	check(bonus_sal>=0),
	check(net_pay = (basic_sal + bonus_sal))