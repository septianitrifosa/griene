Create table SalesRep(id  number(6), name  varchar2(25), salary  number(8,2), commission_pct  number(5,2) );

--COPY 
Insert into SalesRep (id, name, salary, commission_pct)
   Select employee_id, last_name, salary, commission_pct
   from hr.employees where job_id='SA_REP'

--SUBQUERY
Select a.last_name, a.salary, a.department_id, b.salavg
from hr.employees  a, 
	(Select department_id, avg(salary) salavg
    from hr.employees group by department_id)  b
    where a.department_id=b. department_id;


Insert into   
     (Select id, name, salary, commission_pct
       from salesrep where salary>0 WITH CHECK OPTION)
    Values(999, ‘Smith’,-1, 8.2)

--UNCONDITIONAL INSERT
CREATE TABLE sal_history (id  number(6), hire_date  date, sal  number(8,2));
CREATE TABLE mgr_history (id number (6), mgr  number(6),  sal  number(8,2));

--INGET HARUS BIKIN ALIAS YA, BIAR KETEMU VALUES SAMA SELECT NYA
INSERT ALL
INTO sal_history VALUES(ID,HIRE_DATE,SAL)
INTO mgr_history VALUES(ID,MGR,SAL)
SELECT 	employee_id ID, hire_date HIRE_DATE, salary SAL, manager_id MGR
FROM hr.employees
WHERE employee_id > 200

SELECT * FROM	sal_history;
SELECT * FROM	mgr_history;

--CONDITIONAL INSERT
 INSERT ALL
		WHEN SAL > 10000 THEN
			INTO sal_history VALUES(ID,HIRE_DATE,SAL)
		WHEN MGR > 100 THEN
			INTO mgr_history VALUES(ID,MGR,SAL)
	      	SELECT 	employee_id ID,hire_date HIRE_DATE,
  		  	salary SAL, manager_id MGR
		FROM hr.employees
		WHERE employee_id > 200

DELETE FROM sal_history;
DELETE FROM mgr_history;

--INSERT FIRST
INSERT FIRST
		WHEN SAL > 10000 THEN
			INTO sal_history VALUES(ID,HIRE_DATE,SAL)
		WHEN MGR > 100 THEN
			INTO mgr_history VALUES(ID,MGR,SAL)
	      	SELECT employee_id ID,hire_date HIRE_DATE,
  		  	salary SAL, manager_id MGR
		FROM hr.employees
		WHERE employee_id > 200
    
--PIVOTING INSERT
CREATE TABLE SALES_DATA (id  number(6), thn number(4), jan number(3), feb number(3), mar number(3));
INSERT INTO SALES_DATA (id, thn, jan, feb, mar) VALUES ('100','1999','10','20','30');
INSERT INTO SALES_DATA (id, thn, jan, feb, mar) VALUES ('101','1999','20','30','40');

CREATE TABLE  SALES (id  number(6), thn number(4), bln number (3), jml number(3));
insert all
		into sales values( id, thn, 1, jan)
		into sales values( id, thn, 2, feb)
		into sales values( id, thn, 3, mar)
		select id, thn, jan, feb, mar
		from sales_data;

SELECT*FROM sales_data;
SELECT * FROM Sales;
