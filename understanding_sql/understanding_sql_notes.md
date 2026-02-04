# MODULE 3: WORKING WITH SQL & SQLITE

-- Double dash for single line comment in SQL

---

### This command lists all the databases in the SQL server:
```sql
SHOW DATABASES;
```

### To create database:
```sql
CREATE DATABASE employee_data;
```

### To delete a database:
```sql
DROP DATABASE database_name;
```

## Database Schemas:

A database schema defines the structure of a database, including tables, columns, data types, and relationships between tables.

Employee database:

- employee_data
- id
- first_name
- last_name
- email
- phone_number
- hire_date
- job_id
- salary
- department_id

Department database:

- department_id
- department_name

To use a specific database (employee_data schema):
```sql
USE employee_data;
```

## SQL Commands:
### DDL (Data Definition Language) commands:

- CREATE (for creating tables)
- DROP (for deleting tables)
- ALTER (for modifying tables)
- TRUNCATE (for removing all records from a table)

### DML (Data Manipulation Language) commands:

- INSERT (for inserting records into a table)
- UPDATE (for updating records in a table)
- DELETE (for deleting records from a table)
- MERGE (for merging records)

### DLC (Data Control Language) commands:

- GRANT (for granting permissions)
- REVOKE (for revoking permissions)

### TCL (Transaction Control Language) commands:

- COMMIT (for committing transactions)
- ROLLBACK (for rolling back transactions)
- SAVEPOINT (for setting savepoints in transactions)

### DQL (Data Query Language) commands:

- SELECT (for querying data from a table)

## Numeric data types:

- TINYINT (1 byte) - Range: -128 to 127 (signed) or 0 to 255 (unsigned)
- SMALLINT (2 bytes) - Range: -32,768 to 32,767 (signed) or 0 to 65,535 (unsigned)
- MEDIUMINT (3 bytes) - Range: -8,388,608 to 8,388,607 (signed) or 0 to 16,777,215 (unsigned)
- INT or INTEGER (4 bytes) - Range: -2,147,483,648 to 2,147,483,647 (signed) or 0 to 4,294,967,295 (unsigned)
- BIGINT (8 bytes) - Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed) or 0 to 18,446,744,073,709,551,615 (unsigned)
- DECIMAL(M,D) - Fixed-point number with M total digits and D digits after the decimal point
- FLOAT (4 bytes) - Approximate floating-point number
- DOUBLE (8 bytes) - Approximate floating-point number with double precision
- BIT (1-8 bits per byte) - Stores binary data (0 or 1)

## String data types:

- CHAR(N) - Fixed-length string with a maximum length of N characters/bytes (1-255), padded with spaces if necessary
- VARCHAR(N) - Variable-length string with a maximum length of N characters/bytes (1-65,535). L + 1 bytes where L is the actual length of the string, plus 1 or 2 bytes for length storage
- TINYTEXT - L + 1 bytes, (L <= 255) - Small text string
- TEXT - L + 2 bytes, (L <= 65,535) - Medium text string
- MEDIUMTEXT - L + 3 bytes, (L <= 16,777,215) - Large text string
- LONGTEXT - L + 4 bytes, (L <= 4,294,967,295) - Maximum length text string
- BINARY(N) - Fixed-length: N bytes - fixed length binary data
- VARBINARY(N) - L + 1 bytes - variable length binary data

## Date and time data types:

- DATE - 'YYYY-MM-DD' format, 3 bytes
- DATETIME - 'YYYY-MM-DD HH:MM:SS' format, 8 bytes
- TIMESTAMP - 'YYYY-MM-DD HH:MM:SS' format, 4 bytes
- TIME - 'HH:MM:SS' format, 3 bytes
- YEAR - 'YYYY' format, 1 byte

## SQL Constraints:

SQL constraints are used to specify rules for data in a table. Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the database. If there is any violation between the constraint and the data action, the action is aborted. We can specify constraints at the time of CREATE and ALTER table statements.

### Commonly used constraints:

- NOT NULL: ensures that a column cannot have a NULL value
- UNIQUE: ensures that all values in a column are unique
- PRIMARY KEY: uniquely identifies each record in a table. A combination of NOT NULL and UNIQUE. Each table can have only one primary key, which may consist of single or multiple columns
- FOREIGN KEY: ensures referential integrity for a record in another table
- CHECK: ensures that values in a column meet a specific condition
- DEFAULT: sets a default value for a column when no value is specified
- CREATE INDEX: used to create and retrieve data from the database very quickly
