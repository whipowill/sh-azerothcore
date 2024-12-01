-- Drop and recreate users
DROP USER IF EXISTS 'acore'@'localhost';
DROP USER IF EXISTS 'acore'@'127.0.0.1';
CREATE USER 'acore'@'localhost' IDENTIFIED BY 'acore';
CREATE USER 'acore'@'127.0.0.1' IDENTIFIED BY 'acore';
GRANT ALL PRIVILEGES ON * . * TO 'acore'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON * . * TO 'acore'@'127.0.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Check and create acore_auth if it doesn't exist
CREATE DATABASE IF NOT EXISTS acore_auth;

-- Check and create acore_characters if it doesn't exist
CREATE DATABASE IF NOT EXISTS acore_characters;

-- Drop specified databases
DROP DATABASE IF EXISTS acore_world;
DROP DATABASE IF EXISTS acore_playerbots;
