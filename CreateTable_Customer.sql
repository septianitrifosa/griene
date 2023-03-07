--CUSTOMER
CREATE TABLE Customer(
    Custno char(8)CONSTRAINT cust_custno_pk PRIMARY KEY,
    CustFirstName varchar2(15), 
    CustLastName Varchar2(15), 
    CustStreet Varchar2(30), 
    CustCity Varchar(15), 
    CustState char(2), 
    CustZip Char(10), 
    CustBal Number(6,2));
DESCRIBE Customer;

--MENAMPILKAN CONSTRAINT
SELECT * FROM user_constraints 
WHERE table_name = 'CUSTOMER';

--SALESMAN
CREATE TABLE Salesman (
    EmpNo Char(8)CONSTRAINT sal_empno_pk PRIMARY KEY,
	EmpFirstName VarChar2(15),
	EmpLastName VarChar2(15),
	EmpPhone Varchar2(20),
 	EmpEmail Varchar2(25),
	SupEmpNo Char(8),
	EmpCommRate Number(4,2));
DESCRIBE Salesman;

--PRODUCT
CREATE TABLE Product (
    ProdNo Char(8)CONSTRAINT prod_prodno_pk PRIMARY KEY,
	ProdName Varchar2(35),
	ProdMfg Varchar2(20),
	ProdQOH Number(5),
	ProdPrice Number(7,2));
DESCRIBE Product;

--MORDER
CREATE TABLE MOrder (
    OrdNo Char(8) CONSTRAINT morder_ordno_pk PRIMARY KEY,
	OrdDate Date,
	CustNo Char(8),
	OrdName Varchar2(30),
	OrdStreet Varchar2(30),
	OrdCity	Varchar2(15),
	OrdState Char(2),
	OrdZip Char(10),
	EmpNo Char(8));
DESCRIBE MOrder;

--ADD FK CUSTNO
ALTER TABLE morder add constraint ord_custno_fk
FOREIGN KEY(custno) REFERENCES customer(custno);
    
--AD FK EMPNO
ALTER TABLE morder add constraint ord_empno_fk
FOREIGN KEY(empno) REFERENCES salesman(empno);

--MENAMPILKAN CONSTRAINT
SELECT * FROM user_constraints 
WHERE table_name = 'MORDER';

--DORDER
CREATE TABLE DOrder(
    Ordno Char(8),
	ProdNo Char(8),
	Qty Number(3));

--ADD PK
ALTER TABLE DOrder
    ADD CONSTRAINT do_orderno_prodno_pk PRIMARY KEY(Prodno,OrdNo);
describe DOrder;

--ADD FK
--ADD FK CUSTNO
ALTER TABLE dorder add constraint ord_ordno_fk
FOREIGN KEY(custno) REFERENCES customer(custno);
    
--AD FK EMPNO
ALTER TABLE morder add constraint ord_empno_fk
FOREIGN KEY(empno) REFERENCES salesman(empno);


--INSERT RECORD
INSERT INTO Customer (
    Custno, 
    CustFirstname, 
    CustLastname, 
    Custstreet, 
    Custcity, 
    CustState, 
    CustZip, 
    Custbal)
VALUES (
    'C0954327', 
    'Sherri', 
    'Gordon', 
    '336 Hill St.', 
    'Littleton', 
    'CO', 
    '80129-5543', 
    '230');

INSERT INTO Customer (
    Custno, 
    CustFirstname, 
    CustLastname, 
    Custstreet, 
    Custcity, 
    CustState, 
    CustZip, 
    Custbal)
VALUES (
    'C1010398',
	'Jim',
    'Glussman',
	'1432 E.Ravenna',
	'Denver',
	'CO',
	'80111-0033',
	'200');

INSERT INTO Customer (
    Custno, 
    CustFirstname, 
    CustLastname, 
    Custstreet, 
    Custcity, 
    CustState, 
    CustZip, 
    Custbal)
VALUES (
    'C2388597',
	'Beth',
    'Taylor',
	'2396 Rafter Rd',
	'Seattle',
	'WA',
	'98103-1121',
	'500');

INSERT INTO Customer (
    Custno, 
    CustFirstname, 
    CustLastname, 
    Custstreet, 
    Custcity, 
    CustState, 
    CustZip, 
    Custbal)
VALUES (
    'C3340959',
	'Betty',
    'Wise',
	'4334 153rd NW',
	'Seattle',
	'WA',
	'98178-331',
	'200');

INSERT INTO Customer (
    Custno, 
    CustFirstname, 
    CustLastname, 
    Custstreet, 
    Custcity, 
    CustState, 
    CustZip, 
    Custbal)
VALUES (
    'C3499503',
	'Bob',
    'Mann',
	'1190 Lorraine Cir.',
	'Monroe',
	'WA',
	'98013-1095',
	'0');

select*from customer;

--UPDATE DATA
UPDATE Customer SET CustFirstName ='Sherry'
WHERE Custno = 'C0954327';

UPDATE Customer SET CustBal = 100
WHERE CustFirstName = 'Bob';;
