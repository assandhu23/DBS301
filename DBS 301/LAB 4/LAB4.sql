SELECT
TO_CHAR(AVG(SALARY),'$999,999.99') AS "Average pay",
TO_CHAR(MIN(SALARY),'$999,999.99') AS "Lowest pay", 
TO_CHAR((AVG(SALARY)-MIN(SALARY)),'$999,999.99') AS "Real Amount" 
FROM EMPLOYEES;



SELECT DEPARTMENT_ID AS "Department Number",
TO_CHAR(MAX(SALARY),'$999,999.99') AS "High",
TO_CHAR(MIN(SALARY),'$999,999.99') AS "Low",
TO_CHAR(AVG(SALARY),'$999,999.99') AS "Avg"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY 4 DESC;




SELECT DEPARTMENT_ID "Dept#",
JOB_ID "Job",
COUNT(JOB_ID) "How Many"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID
HAVING COUNT(EMPLOYEE_ID) >= 2
ORDER BY 3 DESC;

SELECT JOB_ID AS "Job Title",
SUM(SALARY) AS "Total Paid"
FROM EMPLOYEES
WHERE JOB_ID NOT IN('AD_PRES', 'AD_VP')
GROUP BY JOB_ID
HAVING SUM(SALARY) > 15000
ORDER BY 2 DESC;

SELECT MANAGER_ID AS "Manager Number",
COUNT(EMPLOYEE_ID) AS "Number of EMPLOYEES"
FROM EMPLOYEES
WHERE MANAGER_ID NOT IN(100, 101, 102)
GROUP BY MANAGER_ID
HAVING COUNT(2) > 2
ORDER BY 2 DESC;


SELECT DEPARTMENT_ID AS "Department Number",
MAX(HIRE_DATE) AS "Lastest Hire Date",
MIN(HIRE_DATE) AS "Earliest Hire Date"
FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN(10, 20)
GROUP BY DEPARTMENT_ID
HAVING TO_CHAR(MAX((HIRE_DATE)),'YYYYMMDD') < '20010101'
ORDER BY 2 DESC;

