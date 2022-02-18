select * from EmployeeInfo

--NEW TABLE EMPID is FOREIGN KEY FOR EMPLOYEEDETAIL (RELATIONSHIP)
Create table EmployeeDetail(
EmpID int IDENTITY(1,1) PRIMARY KEY,
Salary int NOT NULL,
Experience int NOT NULL,
Department varchar(50) NOT NULL,
FOREIGN KEY (EmpId) REFERENCES EmployeeInfo(EmpID))

--INSERT OPERATION ON EMPLOYEEDETAIL
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('30000','2','dotnet')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('25000','1','React')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('35000','3','Database')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('28000','1','dotnet')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('40000','3','Python')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('50000','5','HR')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('60000','4','SQL')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('32000','2','dotnet')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('38000','3','Php')
INSERT INTO EmployeeDetail(Salary , Experience , Department ) VALUES('31000','2','dotnet')

select * from EmployeeDetail

--INNER JOIN

SELECT EmployeeDetail.Salary, EmployeeInfo.FirstName , EmployeeInfo.LastName , EmployeeDetail.Department , EmployeeDetail.Experience
FROM EmployeeDetail
INNER JOIN EmployeeInfo ON EmployeeDetail.EmpID = EmployeeInfo.EmpID
ORDER BY EmployeeDetail.Salary DESC

--MAX SALARY DETAILS
SELECT top 1 EmployeeDetail.Salary, EmployeeInfo.FirstName , EmployeeInfo.LastName , EmployeeDetail.Department , EmployeeDetail.Experience
FROM EmployeeDetail
INNER JOIN EmployeeInfo ON EmployeeDetail.EmpID = EmployeeInfo.EmpID
ORDER BY EmployeeDetail.Salary DESC

--LOWEST SALARY
SELECT top 1 EmployeeDetail.Salary, EmployeeInfo.FirstName , EmployeeInfo.LastName , EmployeeDetail.Department , EmployeeDetail.Experience
FROM EmployeeDetail
INNER JOIN EmployeeInfo ON EmployeeDetail.EmpID = EmployeeInfo.EmpID
ORDER BY EmployeeDetail.Salary ASC

--RIGHT JOIN
SELECT EmployeeDetail.EmpID, EmployeeInfo.LastName, EmployeeInfo.FirstName
FROM EmployeeDetail
RIGHT JOIN EmployeeInfo ON EmployeeDetail.EmpID = EmployeeInfo.EmpID
ORDER BY EmployeeInfo.FirstName

--LEFT JOIN
SELECT EmployeeInfo.FirstName , EmployeeDetail.Salary , EmployeeDetail.Department
from EmployeeInfo
LEFT JOIN EmployeeDetail ON EmployeeInfo.EmpID = EmployeeDetail.EmpID


select * from EmployeeInfo

select * from EmployeeDetail


Select Salary from EmployeeDetail where EmpID = 2


--MAX SALARY

SELECT MAX(Salary) As Highest_Salary
FROM EmployeeDetail 
GROUP BY Experience 

--MIN SALARY
SELECT MIN(Salary) AS Lowest_Salary
FROM EmployeeDetail
GROUP BY Salary


