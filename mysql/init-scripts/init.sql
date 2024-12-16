-- Create databases for Ghost and Answer
CREATE DATABASE IF NOT EXISTS ghost_db;
CREATE DATABASE IF NOT EXISTS answer_db;

-- Fix root password
ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'root_password';

-- Create users for Ghost and Answer
CREATE USER IF NOT EXISTS 'ghost_user'@'%' IDENTIFIED WITH caching_sha2_password BY 'ghost_password';
CREATE USER IF NOT EXISTS 'answer_user'@'%' IDENTIFIED WITH caching_sha2_password BY 'answer_password';

-- Grant privileges to Ghost and Answer users
GRANT ALL PRIVILEGES ON ghost_db.* TO 'ghost_user'@'%';
GRANT ALL PRIVILEGES ON answer_db.* TO 'answer_user'@'%';

-- Ensure privileges are applied
FLUSH PRIVILEGES;
