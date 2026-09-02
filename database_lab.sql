-- PART 1: PostgreSQL Relational Database Assignment

-- 1. Created the lab database
CREATE DATABASE bootcamp;

-- 2. Created the student table structure
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- 3. Inserted my custom student record
INSERT INTO students (name, age) VALUES ('Farhiya', 20);

-- 4. Verified the record was stored successfully
SELECT * FROM students;
-- PART 3: Redis Key-Value Database Assignment
-- Executed via Codapi Redis Playground Sandbox Engine

-- 1. Stored my custom student name record
-- Command: SET student:name "Farhiya"
-- Output: OK

-- 2. Retrieved my student record name
-- Command: GET student:name
-- Output: "Farhiya"

-- 3. Set a security token expiring in 10 seconds
-- Command: SETEX session:token 10 "active"
-- Output: OK
-- PART 4: MongoDB Document Database Assignment
-- Executed via Online Mongo Playground Engine

-- 1. Switched database schema workspace
-- Command: use bootcamp;

-- 2. Inserted my custom student document into the collection
-- Command: db.students.insertOne({ "name": "Farhiya", "age": 20, "course": "Database Bootcamp" });

-- 3. Queried and retrieved my custom student document row records
-- Command: db.students.find({ "name": "Farhiya" });


-- PART 5: LAB REFLECTION AND CONCLUSION ANSWERS
-- Question 1: Which database felt the easiest to store a simple student record and why?
-- Answer: MongoDB felt the easiest for storing the student record because it completely bypasses the need for rigid structural design schemas or complex structural table commands. It allowed records to be written instantly as simple flexible objects.

-- Question 2: How was structure defined upfront in PostgreSQL versus dynamic data creation?
-- Answer: Structure was defined completely upfront in PostgreSQL using explicit column schema tables requiring static predefined field constraints. Conversely, inside MongoDB or Redis, datasets are initialized dynamically on-the-fly without needing any structured table blueprint frameworks beforeld constraints. Conversely, inside MongoDB or Redis, datasets are initialized dynamically on-the-fly without needing any structured table blueprint frameworks beforehand.

-- Question 3: In what scenario would you choose a Key-Value database like Redis over a Relational database like PostgreSQL?
-- Answer: You would choose a Key-Value database like Redis when you need ultra-fast performance with extremely low latencies, such as handling real-time data caching, session state tokens management, or high-speed live counters, where structured table queries and complex table joins are not required.

