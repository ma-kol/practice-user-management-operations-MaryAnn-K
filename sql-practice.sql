-- Select all data
SELECT * FROM users;

-- Pull only specific columns
SELECT firstName AS first, lastName AS last FROM users;

-- Insert new line of data into the set
INSERT INTO users (username, firstName, lastName, age)
	VALUES ('maryannk', 'Mary Ann', 'Koller', 29);
    
-- Pull a specific subset with a WHERE condition
SELECT * FROM users
	WHERE id < 14;
    
-- Delete line(s) from the dataset
DELETE FROM users WHERE id = 7;

-- Ordering, aliasing
SELECT CONCAT(firstName, " ", lastName) as Name, age FROM users
	ORDER BY age DESC;
    
-- Update a line in the dataset
UPDATE users SET firstName = 'John' WHERE firstName = 'Michael';

-- Use In as a filter
SELECT firstName FROM users WHERE firstName IN ('Michael', 'John');

-- Use OR instead of IN
SELECT firstName FROM users WHERE firstName = 'Michael' OR firstName = 'John';

-- Limits and Offsets
SELECT CONCAT(firstName, " ", lastName) as Name, age FROM users
	ORDER BY age DESC
    LIMIT 5 OFFSET 5;
    
-- Logical AND operator, more sorting results.
SELECT firstName, lastName, age FROM users
	WHERE age > 22 AND age <=50
    ORDER BY lastName;