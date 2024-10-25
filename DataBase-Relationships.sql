// 1) One to one Relationship : 
- Primary key of one object passed as foreign key to primary key of another table.

 Ex. here Users tables primary key is passed as foreign key to the primary key of user_profile table.

 CREATE TABLE Users(
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
 );

 CREATE TABLE user_profile(
    profile_id INT PRIMARY KEY,
    user_id INT UNIQUE,
    profile_data VARCHAR(255),
    FOREIGN KEY(user_id) PREFERENCES Users(user_id);
 );




//2) One to Many Relationship :
- Each Reacord in Table-A can be associated with multiple records in a table-B, But each record in Table-B can be associated with only one record in Table-A.

EX. in table department and employee, where each department can have multiple employee, but each employee belong to the one department.

CREATE TABLE department(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employee(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);



//3) Many to Many Relationship :

- Each Record in a Table-B can be associated with multile record in table-B and vice versa.

Ex. table student and courses, where each student can enroll in multile courses, and each courses can have multiple students.

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Student_Courses(
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



// 4) Many to One Relationship :
- multile record in table B can be associated with one record in table A.

Ex. 
in table teachers and courses , may courses can be taught by single teacher.

CREATE TABLE teachers(
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    teacher_id INT,
    FOREIGN KEY(teacher_id) REFERENCES teachers(teacher_id)
;)