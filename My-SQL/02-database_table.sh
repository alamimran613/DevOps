# Show Databases
SHOW DATABASES;

# Create Database
CREATE DATABASE mydatabase;

# Select/Use Database
USE mydatabase;

# Get Current Selected Database Name
SELECT DATABASE();

# Create Table, This table will create inside selected database
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# Insert Value in Table, Total 3 Entry, Use one by one
INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');
INSERT INTO users (username, email) VALUES ('imran_alam', 'imran@example.com');
INSERT INTO users (username, email) VALUES ('jason_browdy', 'jason@example.com');

# Get all data from table named users
SELECT * FROM users;

