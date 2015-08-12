CREATE USER 'chappy_dev'@'localhost' IDENTIFIED BY  "Tzw9GRkN3yK9g9PX";
CREATE DATABASE chappy CHARACTER SET = utf8 COLLATE utf8_unicode_ci;
GRANT ALL PRIVILEGES ON chappy.* TO 'chappy_dev'@'localhost';