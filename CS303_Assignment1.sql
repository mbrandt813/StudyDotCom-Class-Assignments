USE finalproject;

/*Use zerofill on zip to make sure leading zeros do not dissapear.*/
CREATE TABLE users
    (userid INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100),
     username VARCHAR(20),
     address VARCHAR(300),
     city VARCHAR(100),
     stat VARCHAR(2),
     zip MEDIUMINT(5) ZEROFILL)
     ;
     
CREATE TABLE locations 
    (itemid INT PRIMARY KEY AUTO_INCREMENT,
     type INT,
     description VARCHAR(500),
     lng REAL,
     lat REAL)
     ;
     
CREATE TABLE photographs
   (photoid INT PRIMARY KEY,
    locationid INT)
    ;