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

<h3>Data Types</h3>
