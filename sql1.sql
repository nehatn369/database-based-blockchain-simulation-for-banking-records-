USE blockchain_ml_db;

USE blockchain_ml_db;
SELECT COUNT(*) FROM transactions;

UPDATE transactions
SET tampering_prediction = 0;

SELECT *
FROM transactions
LIMIT 50;

ALTER TABLE transactions 
ADD COLUMN tampering_prediction INT DEFAULT 0;

UPDATE transactions
SET tampering_prediction = 0,
    previous_hash = NULL,
    current_hash = NULL;

UPDATE transactions
SET account_balance = 9000
WHERE id = 10;

UPDATE transactions
SET account_balance = account_balance + 2000
WHERE id = 30;

SELECT id, tampering_prediction FROM transactions WHERE id=12;


SELECT id, previous_hash, current_hash
FROM transactions
LIMIT 5;




