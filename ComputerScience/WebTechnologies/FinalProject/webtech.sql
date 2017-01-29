CREATE DATABASE IF NOT EXISTS webtech;

USE webtech;

CREATE TABLE IF NOT EXISTS groups(
username VARCHAR(65) NOT NULL UNIQUE PRIMARY KEY ,
usertype VARCHAR(65) NOT NULL DEFAULT 'user'
);

CREATE TABLE IF NOT EXISTS users(
username VARCHAR(65) NOT NULL UNIQUE PRIMARY KEY ,
pass_word VARCHAR(767) NOT NULL ,
FOREIGN KEY fk_username(username) REFERENCES groups(username) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS admins(
username VARCHAR(65) NOT NULL UNIQUE ,
pass_word VARCHAR(767) NOT NULL ,
FOREIGN KEY fk_username(username) REFERENCES groups(username) ON UPDATE RESTRICT ON DELETE RESTRICT
);



