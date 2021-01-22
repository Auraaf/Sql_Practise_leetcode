#sol1
select max(al_sal.salary) as SecondHighestSalary  from 
(select salary from employee e1 , (select max(salary) as msl from employee) mx_sl 
where e1.salary < mx_sl.msl) as al_sal ;
#sol2
select max(salary) as secondhighestsalary from
employee e1
where e1.salary< (select max(salary) from employee ) ;
