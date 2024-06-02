<h1>SQL- Sructure Query Language</h1> <br>

<h2>Queries in SQL</h2> <br>

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
 <h2>Table Queries</h2>

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

<h3>Data Types</h3> <br>
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
