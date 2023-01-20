sql

--1. Daftar Pegawai
SELECT * FROM hr.Employees;

--2. Daftar pegawai (employee_id, first_name, last_name)
SELECT employee_id, first_name, last_name 
FROM hr.employees;

--3. Daftar pegawai yang manager_id-nya=100
SELECT first_name, manager_id
FROM hr.employees
WHERE manager_id=100;

--4. Daftar pegawai yang bekerja sebagai akuntan (‘AC_ACCOUNT’)
SELECT first_name, job_id
FROM hr.employees
WHERE job_id
LIKE 'AC_ACCOUNT';

--5.	Daftar akuntan yang gajinya <7000
SELECT first_name, job_id, salary
FROM hr.employees
WHERE salary <7000
AND job_id
LIKE 'AC_ACCOUNT';

--6.	Daftar pegawai yang bukan bekerja sebagai ‘IT_PROG’ maupun ‘AC_ACCOUNT’
SELECT first_name, job_id
FROM hr.employees
WHERE job_id
NOT IN ('IT_PROG','AC_ACCOUNT');

--7.	Daftar pegawai yang bekerja sebagai ‘SH_CLERK’ atau ‘AC_ACCOUNT’
SELECT first_name, job_id
FROM hr.employees
WHERE job_id
IN ('SH_CLERK','AC_ACCOUNT');

--8.	Daftar pegawai yang bekerja sebagai ‘IT_PROG’ dan first_namenya diawali dengan huruf ‘D’
SELECT first_name, job_id
FROM hr.employees
WHERE job_id IN ('IT_PROG')
AND first_name LIKE 'D%';

--9.	Daftar bawahan dari pegawai no 103 dan masuk kerja setelah tahun 1998
SELECT first_name,employee_id
FROM hr.employees
WHERE employee_id < 103 AND hire_date > '31-JAN-98';

--10.	Daftar pegawai yang gajinya < 3000 dan yang gajinya >8000
SELECT first_name, salary
FROM hr.employees
WHERE salary NOT BETWEEN 3000 AND 8000;

--11.	Daftar pegawai yang gajinya > 8000 dan bekerja sebagai SA_REP atau IT_PROG
SELECT first_name, job_id, salary
FROM hr.employees
WHERE salary > 8000
AND job_id = 'SA_REP'
OR job_id = 'IT_PROG';

--12.	Daftar departments dengan lokasi no. 1700
SELECT first_name,department_id 
FROM hr.employees
WHERE department_id = 1700;

--13.	Daftar pegawai yang bekerja sebagai PU_CLERK dan gajinya antara 2000-3000 
SELECT first_name, job_id, salary
FROM hr.employees
WHERE salary BETWEEN 2000 AND 3000
AND job_id = 'PU_CLERK';

--14.	Daftar pegawai yang bekerja di department 90 atau 100,  gajinya antara 7000-20000 dan manager_id nya bukan 100
SELECT first_name, department_id, salary, manager_id
FROM hr.employees
WHERE manager_id <> 100 AND department_id = 90 OR department_id = 100
AND salary BETWEEN 7000 AND 20000;

--15.	Daftar pegawai bagian penjualan (job_id diawali kata ‘SA’) yang masuk setelah tahun 1998, dan gajinya> 10000
SELECT first_name, job_id, hire_date, salary
FROM hr.employees
WHERE (job_id LIKE 'SA%') 
AND hire_date > '01-JAN-98' AND salary > 10000;

--16.	Daftar pegawai ‘IT_PROG’ yang gajinya > 8000 dan ‘PU_CLERK’ yang gajinya < 3000
SELECT first_name, job_id, salary
FROM hr.employees
WHERE (job_id = 'IT_PROG' AND salary > 8000) 
OR (job_id = 'PU_CLERK' AND salary < 3000);

--17.	Tampilkan first_name, last_name, job_id para pegawai terurut mulai dari first_name yang paling panjang
SELECT LENGTH(first_name) AS NAME_LENGTH, first_name, last_name, job_id 
FROM hr.employees
ORDER BY LENGTH(first_name) DESC;

--18.	Seperti no. 1 tetapi hanya untuk pegawai ‘IT_PROG’
SELECT * FROM hr.Employees
WHERE job_id = 'IT_PROG';

--19.	Tampilkan first_name, last_name, hire_date, masa kerja dalam bulan dibulatkan 1 desimal terdekat
SELECT first_name, last_name, hire_date, 
ROUND(hire_date,'MONTH') AS ROUND
FROM hr.employees;

--20.	Tampilkan first_name, salary, dan salary dibulatkan ke kelipatan 5000-an terdekat
SELECT first_name, salary, ROUND(salary / 5000) * 5000 AS ROUND_SALARY
FROM hr.employees;

--21.	Seperti  no.20 tetapi hasilnya diurutkan berdasarkan first_name
SELECT first_name, salary, ROUND(salary / 5000) * 5000 AS ROUND_SALARY
FROM hr.employees
ORDER BY first_name ASC;

--22.	Tampilkan last_name, hire_date, 30 hari setelah hire_date, 3 bulan setelah hire_date
SELECT last_name, hire_date, (hire_date)+30 AS "30 HARI SETELAH HD", (hire_date) + 90 AS "3 BULAN SETELAH HD"
from hr.employees;