CREATE TABLE Customer(
    Custno char(8), 
    CustFirstName varchar2(15), 
    CustLasName Varchar2(15), 
    CustStreet Varchar2(30), 
    CustCity Varchar(15), 
    CustState char(2), 
    CustZip Char(10), 
    CustBal Number(6,2));

DESCRIBE Customer;

--ADD
ALTER TABLE Customer ADD Telepon varchar2(15);
DESCRIBE Customer;

--MODIFY
ALTER TABLE Customer MODIFY Telepon varchar2(12);
DESCRIBE Customer;

--RENAME
ALTER TABLE Customer RENAME COLUMN Telepon TO noTlp;
DESCRIBE Customer;

--DROP COLUMN
ALTER TABLE Customer DROP COLUMN noTlp;
DESCRIBE Customer;

--ADD PK
ALTER TABLE Customer 
    ADD CONSTRAINT cust_custno_pk PRIMARY KEY(custno);
DESCRIBE Customer;

--ADD FK

--MENAMPILKAN CONSTRAINT
SELECT * FROM user_constraints 
WHERE table_name = 'CUSTOMER';



