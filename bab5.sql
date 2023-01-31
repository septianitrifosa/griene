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
