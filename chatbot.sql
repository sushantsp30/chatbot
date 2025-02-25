CREATE DATABASE chat_log;
use chat_log;

CREATE TABLE user(email_id varchar(30) PRIMARY KEY,
password varchar(50) NOT NULL,
name varchar(40) NOT NULL);

CREATE TABLE message_log(msg_id INT PRIMARY KEY AUTO_INCREMENT,
messages varchar(100) NOT NULL,
date DATE ,
email_id varchar(50) UNIQUE,
time timestamp,
msg_type varchar(50) NOT NULL
);



CREATE TABLE model(model varchar(20) NOT NULL,
version varchar(30) NOT NULL,
email_id varchar(50) PRIMARY KEY,
release_date DATE)
;

CREATE TABLE repeated_message(msg_id INT PRIMARY KEY AUTO_INCREMENT,
email_id varchar(50) UNIQUE,
repeated_count INT DEFAULT 1,
time timestamp default current_timestamp


);

INSERT INTO user(email_id,password,name) values ("aditya@gmail.com","123ABC","Aditya");

SELECT * from user;

ALTER TABLE messages_log MODIFY COLUMN time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

INSERT INTO message_log(messages,date,email_id,msg_type) values ("What is SQL?","2025-02-02","aditya@gmail.com","TEXT");

SELECT * from messages_log;

INSERT INTO user (email_id, password, name) VALUES
('sushant@gmeil', 'sus123', 'Sushant Patade'),
('kalpesh@gmail.com', 'klp123', 'Kalpesh Patil');


INSERT INTO message_log (messages, date, email_id, msg_type) VALUES
('Where are you?', '2025-02-21', 'kalpesh@gmail.com', 'text');

INSERT INTO model (model, version, email_id, release_date) VALUES
('GPT-4', '4.0.1', 'sushant@gmail.com', '2025-02-15'),
('Deepseek', 'r1', 'kalpesh@gmail.com', '2025-02-18');


INSERT INTO repeated_message (msg_id, email_id, repeated_count) VALUES
(1, 'sushant@gmail.com', 2), 
(3, 'kalpesh@gmail.com', 1); 

SELECT * from repeated_message order by repeated_count desc;

