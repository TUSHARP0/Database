**Solve the following**

1. write a procedure to insert record into employee table.
the procedure should accept empno, ename, sal, job, hiredate as input parameter
write insert statement inside procedure insert_rec to add one record into table

2. write a procedure to delete record from employee table.
the procedure should accept empno as input parameter.
write delete statement inside procedure delete_emp to delete one record from emp
table

3. write a procedure to display empno,ename,deptno,dname for all employees with sal > given salary. 
 Pass salary as a parameter to procedure
 
4. write a procedure to find min,max,avg of salary and number of employees in the
given deptno.
deptno --→ in parameter
min,max,avg and count ---→ out type parameter
execute procedure and then display values min,max,avg and count

5. write a procedure to display all pid,pname,cid,cname and salesman name(use
product,category and salesman table)

6. write a procedure to display all vehicles bought by a customer. pass cutome name as
a parameter.(use vehicle,salesman,custome and relation table)

7. Write a procedure that displays the following information of all emp
Empno,Name,job,Salary,Status,deptno
Note: - Status will be (Greater, Lesser or Equal) respective to average salary of their own
department. Display an error message Emp table is empty if there is no matching
record.

8. Write a procedure to update salary in emp table based on following rules.
Exp< =35 then no Update
Exp> 35 and <=38 then 20% of salary
Exp> 38 then 25% of salary

9. Write a procedure and a function.
Function: write a function to calculate number of years of experience of employee.(note:
pass hiredate as a parameter)
Procedure: Capture the value returned by the above function to calculate the additional
allowance for the emp based on the experience.

Additional Allowance = Year of experience x 3000
Calculate the additional allowance
and store Empno, ename,Date of Joining, and Experience in
years and additional allowance in Emp_Allowance table.

10. Write a function to compute the following. Function should take sal and hiredate
as i/p and return the cost to company.
DA = 15% Salary, HRA= 20% of Salary, TA= 8% of Salary.
Special Allowance will be decided based on the service in the company.
Service < 1 Year Nil,
Service >=1 Year< 2 Year 10% of Salary,
Service >=2 Year< 4 Year 20% of Salary,
Service >4 Year 30% of Salary

11. Write query to display empno,ename,sal,cost to company for all employees(note:
use function written in question 10)

Q2. Write trigger
1. Write a tigger to store the old salary details in Emp _Back (Emp _Back has the
same structure as emp table without any
constraint) table.

(note :
execute procedure written in Q8 and
check the entries in EMP_back table after execution of the procedure)

2. Write a trigger which add entry in audit table when user tries to insert or delete
records in employee table store empno,name,username and date on which
operation performed and which action is done insert or delete. in emp_audit table.
create table before writing trigger.

3. Create table vehicle_history. Write a trigger to store old vehicleprice and new vehicle
price in history table before you update price in vehicle table
(note: use vehicle table).
