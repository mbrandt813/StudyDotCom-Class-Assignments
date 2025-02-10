/*Prompt Two*/
USE finalproject;

/*Use zerofill on zip to make sure leading zeros do not dissapear.*/
CREATE TABLE users    
     (userid INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100),
     username VARCHAR(20),
     address VARCHAR(300),
     city VARCHAR(100),
     state VARCHAR(2),
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
    
/*Prompt Three*/
ALTER TABLE locations MODIFY type INT NOT NULL;
ALTER TABLE locations MODIFY description VARCHAR(500) NOT NULL;
ALTER TABLE locations MODIFY lng REAL NOT NULL;
ALTER TABLE locations MODIFY lat REAL NOT NULL;

ALTER TABLE users MODIFY name VARCHAR(100) NOT NULL;
ALTER TABLE users MODIFY username VARCHAR(20) NOT NULL;

ALTER TABLE photographs MODIFY photoid INT NOT NULL;
ALTER TABLE photographs MODIFY locationid INT NOT NULL;

/*Prompt 4*/
CREATE UNIQUE INDEX id ON users (userid);
CREATE UNIQUE INDEX photoid ON photographs (photoid);

/*Prompt 5*/
INSERT INTO users (name, username, address, city, state, zip)
    VALUES ('Bonnie Buntcake', 'bbunt', '6709 Wonder Street', 'Wonderbread', 'OH', 46106),
           ('Sam Smarf', 'ssmarf', '356 A Street', 'Beefy', 'PA', 19943),
		   ('Wendy Grog', 'wgrog', '900 Star Street', 'Mary', 'MD', 21340),
           ('Joe Jogger', 'jjogger', '183713 N North Street', 'Norther', 'WV', 51423)
           ;

SELECT * FROM users
;

/*Prompt 6*/
SELECT COUNT(*) FROM users
;

/*Prompt 7*/
ALTER TABLE photographs ADD COLUMN userid INT AFTER locationid
;

/*Prompt 8*/
ALTER TABLE photographs MODIFY userid INT NOT NULL;

/*Prompt 9*/
INSERT INTO locations (type, description, lng, lat)
    VALUES (1, 'Independence Hall', 794.35, 651.43),
		   (2, '6709 Wonder Street', 323.41, 412.22),
           (1, 'Sunrise', 221.45, 132.43),
           (2, '356 A Street', 123.32, 222.43),
           (1, 'Mountains', 34.12, 87.99),
           (2, '900 Star Street', 1071.9, 206.45),
           (1, 'Moonrise', 816.2, 111.2),
           (2, '183714 N North Street', 176.11, 11.176)
           ;
           
/*In the last query where I inserted data into the locations table
itemid numbers were automatically created because I gave that column
an auto_increment constraint. Since we entered 8 rows of data, there
are itemids made from 1 to 8, I can use any of those for the locationid
in the next insert statement */

INSERT INTO photographs (photoid, locationid, userid)
    VALUES (1, 4, 1),
		   (2, 2, 1),
           (3, 6, 3),
           (4, 1, 4)
           ;

SELECT * FROM locations
;

SELECT * FROM photographs
;

/*Prompt 10*/
SELECT name FROM users
;

/*Prompt 11*/
SELECT name FROM USERS us, photographs pgh WHERE us.userid = pgh.userid
;

/*Prompt 12*/
SELECT DISTINCT name FROM USERS us, photographs pgh WHERE us.userid = pgh.userid
;