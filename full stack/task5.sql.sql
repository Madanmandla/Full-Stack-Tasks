CREATE DATABASE payment_simulation;
USE payment_simulation;
CREATE TABLE user_account (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    balance DECIMAL(10,2)
);

CREATE TABLE merchant_account (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(50),
    balance DECIMAL(10,2)
);
INSERT INTO user_account VALUES (1, 'Madan', 5000);
INSERT INTO merchant_account VALUES (101, 'ABC Store', 2000);
SELECT * FROM user_account;
SELECT * FROM merchant_account;
START TRANSACTION;
UPDATE user_account
SET balance = balance - 500
WHERE user_id = 1;
UPDATE merchant_account
SET balance = balance + 500
WHERE merchant_id = 101;
COMMIT;
SELECT * FROM user_account;
SELECT * FROM merchant_account;
ROLLBACK;
