DROP DATABASE IF EXISTS bacon_db;
CREATE DATABASE bacon_db;
USE bacon_db;

DROP TABLE IF EXISTS itemList;
DROP TABLE IF EXISTS userList;
DROP TABLE IF EXISTS transactionList;

CREATE TABLE itemList (
	item_id INT NOT NULL AUTO_INCREMENT,
	item_name VARCHAR(255) DEFAULT NULL,
	item_price DECIMAL(12,2) DEFAULT 0.00,
	item_description VARCHAR(300) DEFAULT NULL,
	item_image VARCHAR(255) DEFAULT NULL,
	seller_id VARCHAR(255) DEFAULT 'BaconList',
	sold BOOL DEFAULT false,
	PRIMARY KEY (item_id)
);

CREATE TABLE userList (
	user_id VARCHAR(255) UNIQUE NOT NULL,
	user_fullName VARCHAR(255) DEFAULT NULL,
	user_email VARCHAR(255) DEFAULT NULL,
	user_balance DECIMAL(12,2) DEFAULT 0.00,
	user_photo VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE transactionList (
	item_id INT NOT NULL,
	item_price DECIMAL(12,2) NOT NULL,
	buyer_id VARCHAR(255) NOT NULL,
	seller_id VARCHAR(255) DEFAULT 'BaconList',
	dateSold TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);