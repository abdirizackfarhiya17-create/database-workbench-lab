# Hands-On Lab: Setting Up Your Database Workbench

## Part 1: PostgreSQL Relational Database
### Commands Executed:
```sql
-- Confirm installation
SELECT version();

-- Create and configure the workspace
CREATE DATABASE bootcamp;
\c bootcamp

-- Create structural table definition
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert and retrieve my student record
INSERT INTO students (name, age) VALUES ('Farhiya', 20);
SELECT * FROM students;
```

---

## Part 2: Redis Key-Value Database
### Commands & Outputs Executed via Codapi Playground:
* **Connectivity Test:** `PING` ➡️ Output: `PONG`
* **Storing Record Key:** `SET student:name "Farhiya"` ➡️ Output: `OK`
* **Retrieving Record Key:** `GET student:name` ➡️ Output: `"Farhiya"`
* **Setting Temporary Data with Expiry:** `SETEX session:token 10 "active"` ➡️ Output: `OK`
* **Checking Time-To-Live:** `TTL session:token` ➡️ Output: `10` (or remaining seconds)

---

## Part 3: MongoDB Document Database
### Commands Executed via Mongo Playground:
```javascript
use bootcamp;
db.students.insertOne({ "name": "Farhiya", "age": 20, "course": "Database Bootcamp" });
db.students.find({ "name": "Farhiya" });
```

---

## Part 5: Lab Reflection and Conclusion Answers

### Question 1: Which database felt the easiest to store a simple student record and why?
**Answer:** MongoDB felt the easiest for storing the student record because it completely bypasses the need for rigid structural design schemas or complex structural table commands. It allowed records to be written instantly as simple flexible objects.

### Question 2: How was structure defined upfront in PostgreSQL versus dynamic data creation?
**Answer:** Structure was defined completely upfront in PostgreSQL using explicit column schema tables requiring static predefined field constraints. Conversely, inside MongoDB or Redis, datasets are initialized dynamically on-the-fly without needing any structured table blueprint frameworks beforehand.

### Question 3: In what scenario would you choose a Key-Value database like Redis over a Relational database like PostgreSQL?
**Answer:** You would choose a Key-Value database like Redis when you need ultra-fast performance with extremely low latencies, such as handling real-time data caching, session state tokens management, or high-speed live counters, where structured table queries and complex table joins are not required.

