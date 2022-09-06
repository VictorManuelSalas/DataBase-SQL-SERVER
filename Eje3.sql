create database EmpresaAlimentos

use EmpresaAlimentos

CREATE TABLE DEPT2(DEPT_NO INT,DNOMBRE VARCHAR(14),LOC VARCHAR(14),
CONSTRAINT DPTO_PK PRIMARY KEY (DEPT_NO));

CREATE TABLE EMP(EMP_NO INT,APELLIDO VARCHAR(10) NOT NULL,OFICIO VARCHAR(10) NOT NULL,DIR INT,FECHA_ALTA DATE,SALARIO INT NOT NULL,
COMISI�N INT,DEPT_NO INT,
CONSTRAINT EMPLEADO_PK PRIMARY KEY (EMP_NO),
CONSTRAINT DEPT2_FK FOREIGN KEY (DEPT_NO) REFERENCES DEPT2(DEPT_NO));

select * from EMP
--------> CONSULTAS <---------------
--1. Se quiere un listado con el siguiente formato: El departamento de CONTABILIDAD est� en CARACAS.
SELECT 'El departamento de' 
,  DNOMBRE,  'est� en ', LOC FROM DEPT2

--2. Para cada empleado cuyo apellido contenga una "N", se quiere el oficio y apellido. La salida debe estar ordenada por apellido ascendentemente.
SELECT OFICIO, APELLIDO FROM EMP WHERE APELLIDO LIKE '%N%' ORDER BY APELLIDO;

--3. Listado de empleados con su salario total (salario m�s comisi�n). La salida debe estar ordenada por el salario y el apellido descendentemente.
SELECT APELLIDO, (SALARIO + COMISI�N) AS SALARIO_TOTAL FROM EMP
ORDER BY 2 DESC , 1;

--4. Para cada empleado que no tenga comisi�n o cuya comisi�n sea mayor que el 15% de su salario, se pide el salario total que tiene.
--Este ser�: salario m�s su comisi�n m�s el 15% del salario. La salida deber� estar ordenada por el oficio y por el salario que le queda descendentemente.
SELECT APELLIDO, OFICIO, SALARIO + COMISI�N + (SALARIO * 0.15) AS SALARIO_TOTAL FROM EMP
WHERE COMISI�N IS NULL OR COMISI�N > (SALARIO * 0.15) ORDER BY OFICIO, 3 DESC;
