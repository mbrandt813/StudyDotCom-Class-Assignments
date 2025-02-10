/*First I need to create a database to put my new tables in*/
CREATE DATABASE cs303assignment2;

/*Now I need to make sure I am using the new database*/
USE cs303assignment2;

/*Here I will create the Employee locations table that will remove the
functional dependencies of city/state to zip code. ZipCode will be the
primary key.*/
CREATE TABLE EmpLocations
    (ZipCode VARCHAR(11) PRIMARY KEY,
     City VARCHAR(100) NOT NULL,
     State VARCHAR(2) NOT NULL)
     ;
     
/*Here I will create the Department Heirarchy table that will remove the
functional dependencies of managerID to department. Department will be the
primary key.*/     
CREATE TABLE DepHeirarchy
    (Department VARCHAR(100) PRIMARY KEY,
     ManagerID INT)
     ;
 
 /*Now I will remake the employee table that will now be in third normal form,
 3NF. The table will have forgien keys to the department and location tables I
 made above. */
CREATE TABLE EmployeeMaster
    (EmployeeID INT PRIMARY KEY,
     EmployeeLastName VARCHAR(100),
     EmployeeFirstName VARCHAR(100),
     StreetAddress VARCHAR(500),
     ZipCode VARCHAR(11),
     Department VARCHAR(200),
     Position VARCHAR(200),
     Salary INT,
     FOREIGN KEY (ZipCode) REFERENCES EmpLocations(ZipCode),
     FOREIGN KEY (Department) REFERENCES DepHeirarchy(Department))
     ;