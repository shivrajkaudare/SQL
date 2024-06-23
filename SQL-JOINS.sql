CREATE DATABASE mydata;
USE mydata;

CREATE TABLE customer(
 id INT PRIMARY KEY NOT NULL,
 name VARCHAR(30),
 email VARCHAR(20),
 age INT NOT NULL
);

INSERT INTO customer
VALUES (101, "Shivraj", "shiv@gmail.com", 24),
(102, "raj", "shivraj@gmail.com", 22),
(103, "Shiv", "shivk@gmail.com", 23);

CREATE TABLE Account_details(
 id INT PRIMARY KEY NOT NULL,
 accountno INT UNIQUE NOT NULL,
 accountBalance INT
);

INSERT INTO Account_details 
(id, accountno, accountBalance)
VALUES (101, 234543, 45678),
(102, 9876765, 56789),
(103, 09876,123456789);


/*************  INNER JOIN ***************/

SELECT name, accountno, accountBalance
FROM customer
INNER JOIN Account_details
ON customer.id = Account_details.id;


/*************** LEFT JOIN *************/

SELECT *
FROM customer AS c
INNER JOIN cust_details AS cd
ON c.id = cd.id;


/*************** RIGHT JOIN *************/

SELECT c.name, cd.accountno
FROM customer AS c
RIGHT JOIN cust_details AS cd
ON c.id = cd.id;