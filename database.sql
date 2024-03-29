base mode: 


How do you get all users from Chicago?
SELECT * FROM "accounts"
WHERE "city" = 'chicago';

How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.
UPDATE "accounts"
SET "account_balance" = 10
WHERE "account_balance" = 0
AND "transactions_attempted" = 0;


How do you select all users that have attempted 9 or more transactions?
SELECT * FROM "accounts"
WHERE "transactions_attempted" > 9

How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
SELECT "username", "account_balance" FROM "accounts"
ORDER BY "account_balance" desc
LIMIT 3;

How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?
SELECT "username", "account_balance" FROM "accounts"
ORDER BY "account_balance" asc
LIMIT 3;

How do you get all users with account balances that are more than $100?
SELECT * FROM "accounts"
WHERE "account_balance" > 100;

How do you add a new account?
INSERT INTO "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('irisnoh', 'chicago', 22, 29, 100000 );

The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM "accounts"
WHERE (city = 'miami' AND "transactions_completed" < 5)
OR (city = 'phoenix' AND "transactions_completed" < 5);