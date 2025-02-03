/*First I need to create the actual database the table are going to go in. I'll name the library Baldwin Library*/
CREATE DATABASE BaldwinLibrary;

/*Nest I need to make sure I am using the new database I created, I'll switch over to it*/
USE BaldwinLibrary;

/*Now I will create the tables. I'll start with the Author table. The AuthorID will be the Primary Key,
and using that constaint will take care of requring it to be unique and not null. All authors should
have a first and last name, so i will make those not null. A authors nationally could be unknown at 
the time of entry, so i will default that to unknown if it's not entered.*/
CREATE TABLE Author
	(AuthorID INT PRIMARY KEY,
     AuthorFirstName VARCHAR(100) NOT NULL,
     AuthorLastNAme VARCHAR(100) NOT NULL,
     AuthorNationality VARCHAR(200))
     ;

/* Next I'll make the Book table. BookID will be the primary key. All books should have a visable title,
so I will make that not null and also give it a larger amount of characters since titles can be pretty long. 
AuthorID will eventuall be a foriegn key to the Author table, so I will make sure the data type matches and 
it is not null.*/
CREATE TABLE Book
	(BookID INT PRIMARY KEY,
     BookTitle VARCHAR(500) NOT NULL,
     AuthorID INT NOT NULL,
     Genre VARCHAR(100))
     ;

/*Next I will make the borrower table. It looks like this table has it's own intended primary key, borrowID,
so i dont need to worry about making a primary key based on two columns. ClientID and BookID cannot be null, 
as there has to be someone borrowing and a book being borrowed - they will also be foriegn keys so i will 
make sure the data types match. */
CREATE TABLE Borrower
	(BorrowID INT PRIMARY KEY,
     ClientID INT NOT NULL,
     BookID INT NOT NULL,
     BorrowDate DATE NOT NULL)
     ;

/*Last I will make the Client table. ClientID will be the primary key. I the real world any piece of data 
could be missing from the Clients profile, but they will always be using thier library card which would have
thier ClientID on it. Because of this I will not make these feilds not null.*/
CREATE TABLE Client
	(ClientID INT PRIMARY KEY,
     ClientFirstName VARCHAR(100),
     ClientLastName VARCHAR(100),
     ClientDOB DATE,
     Occupation VARCHAR(200))
     ;
     