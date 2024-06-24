<h1>SQL- Sructure Query Language</h1> <br>

<h2>Queries in SQL :</h2> <br>

1. Create DataBase : <br>
   syntax - CREATE DATABASE Db_name; <br>

   eg.- CRETAE DATABASE College; <br>

2. Delete DataBase : <br>
   syntax - DROP DATABASE Db_name; <br>

   eg.- DROP DATABASE College; <br>

3. Use Database : <br>
   syntax - USE Db_name;
   eg.- USE College;

4) Show Databases : <br>
   SHOW Databases;

<hr>
 <h2>Table Queries :</h2>

5. SHOW Tables; - shows all tables exists in database. <br>

6) Create Table : <br>
   syntax- CREATE TABLE table_name(
   column_name1 datatype,
   column_name2 datatype
   ); <br><br>
   eg.- CREATE TABLE Student(
   rollNo INT,
   name VARCHAR(20),
   age INT
   );
   <br>

7) Insert Values in Table : <br>
   eg.- INSERT INTO Student
   VALUES
   (101,"Shivraj",12),
   (102,"Deepak",13); <br>

8) to Display all Records in table : <br>
eg.- SELECT \* FROM Student;
<hr>

<h3>Data Types :</h3> <br>
    1) CHAR - String (0-255) <br>
    2) VARCHAR -String (0-255) <br>
    3) BLOB - String (0-65535) <br>
    4) INT - integer (-2,147,483,648 to 2,147,483,647) <br>
    5) TINYINT - integer (-128 to 127)<br>
    6) BIGINT - integer (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,808 ) <br>
    7) BIT - Can Stores X-bit Values , X can range from 1 to 54. <br>
    8) FLOAT - Decimal number with 24 to 53 digits.<br>
    9) BOOLEAN - boolean values 0 or 1. <br>
    10) DATE - date in format of YYYY-MM-DD ranging from 1000-01-01 to 9999-12-31
    11)YEAR - Year in 4 digits format ranging from 1901 to 2155.
<hr>

<h2>Constraints :</h2> rules for data in table
<br>
    1) NOT NULL - columns can not have a null value. <br>
    2) UNIQUE - all values in columns are different.  <br> 
    3) DEFAULT - set the default value of column.  <br>
    4) CHECK - it can limit the value allowed in a column. <br>
<hr>
<h2>Key's :</h2>keys are the special type of column in table. <br>
<h3>1) Primary Key :</h3> 
    - primary keys is column (or set of columns) in a table that uniquely identifies each row. <br>
    - there is only one primary key and it should be NOT NULL. <br>
    - eg.  <br>
         CREATE TABLE Stud(
            id INT PRIMARY KEY 
            NOT NULL 
         );
<h3>2) Foreign Key :</h3>
    - Foreign key is column that passes as reference key to the another table.<br>
    - primary key of one table is passed as refference key to another table <br>
    -eg <br>
    CREATE TABLE temp(                                                    <br> 
      cust_id INT,                                                        <br> 
      FOREIGN KEY (cust_id) references customer(id)                       <br> 
    );
    <br>
    <h2> Clauses :</h2><br>
    <h3>1) WHERE Clause :</h3><br>
     - to define some condition. <br>
     - eg. <br>
            SELECT * FROM Student           <br> 
            WHERE roll_no = 2;<br>
    <h3>2)LIMIT Clause :</h3> <br>
     - sets an upper limit on tuples or rows to be returned <br>
     - Syntax : <br>
            SELECT col1, col2 FROM table_name      <br> 
            LIMIT number; <br>
    <h3>3) ORDER BY Clause :</h3> <br>
     -  to sort in acending order(ASC) or decending order(DSC).<br>
     - by default it Order the elemennt in acending order. <br>
     - eg. <br>
            SELECT * FROM table_name              <br> 
            ORDER BY age;                        <br> 
    <h3>4) GROUP BY Clause :</h3> <br>
     - It collects data from  multiple records and group the result by one or more column.          <br> 
     - Group the rows that have same value.                                                          <br> 
     - eg.<br>
            SELECT count(id)             <br> 
            FROM student                 <br> 
            GROUP BY age;                 <br> 
    <h3>4) HAVING Clause :</h3> <br>
    - it is similar to WHERE Clause i.e it applies some condtions on rows.                             <br> 
    - but is used ehen we want to apply contion after grouping.                                         <br> 
    -Syntax: <br>
            SELECT col1, col2                 <br> 
            FROM table_name                   <br> 
            GROUP BY col_name                  <br> 
            HAVING condition;                   <br>
