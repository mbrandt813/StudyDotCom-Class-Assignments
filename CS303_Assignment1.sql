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
