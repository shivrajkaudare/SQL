/* SQL triggers are essential tools in database management systems (DBMS),
that allow automatic execution of a set of SQL statements when specific database events,
such as INSERT, UPDATE, or DELETE operations, occur. */
/* Syntax */
create trigger [trigger_name] 
[before | after]  
{insert | update | delete}  
on [table_name]  
[for each row]  
[trigger_body] 
