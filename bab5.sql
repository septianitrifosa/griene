SELECT first_name, department_id, department_name, manager_id
From hr.employees NATURAL JOIN hr.departments
ORDER BY Department_id ; --keluar 32 rows
--natural join itu untuk menggabungkan data antara dua tabel dimana panjang data dan tipe datanya sama

SELECT first_name, department_id, department_name
From hr.employees JOIN hr.departments USING (department_id)
ORDER BY department_id; -- keluar 50 rows
-- join using itu menggabungkan antara 2 tabel menggunakan usingnya apa
-- join using tidak menggunakan alias ataupun imbuhan

SELECT first_name, department_id, department_name
From hr.employees JOIN hr.departments USING (department_id)
ORDER BY department_id;  -- ini eror
--manager_id tidak punya tabel

SELECT first_name, D.department_id , department_name, d.manager_id
From hr.employees e JOIN hr.departments d
ON (E.department_id= D.department_id);
--manager_id dan department_id harus dikasih imbuhan atau alias

--SYNTAX CROSS JOIN
SELECT first_name, department_name,
FROM hr.employees, hr.departments;


--JOIN ON JOIN ON
SELECT first_name, D.department_id , department_name, city
From hr.employees e JOIN hr.departments d
ON (E.department_id= D.department_id)
JOIN hr.Locations L
On (D.location_id = L.location_id);

-- SELF JOIN, join ke dirinya sendiri untuk membuat tabel baru, dengan cara membuat alias
--tampilkan daftar pegawai yang memiliki manager
SELECT e.first_name, e.last_name,
       m.first_name, m.last_name
FROM hr.employees e JOIN hr.employees m
ON(e.manager_id = m.employee_id);

--tampilkan nama belakang, department id departement name
SELECT last_name, e.department_id, department_name
FROM hr.employees e LEFT OUTER JOIN hr.departments d
ON (e.department_id = d.department_id)
ORDER BY department_id;

SELECT last_name, e.department_id, department_name
FROM hr.employees e RIGHT OUTER JOIN hr.departments d
ON (e.department_id = d.department_id)
ORDER BY department_id;

SELECT last_name, d.department_id, department_name
FROM hr.employees e full OUTER JOIN hr.departments d
ON (e.department_id = d.department_id)
ORDER BY department_id;
