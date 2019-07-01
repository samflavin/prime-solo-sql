--1. How do you get all users from Chicago?
select * from "accounts" where city = 'chicago';
--2.How do you get all users with usernames that contain the letter a?
select * from "accounts" where "username" ILIKE '%a%';
--3.The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.
select * from "accounts" where "account_balance" = 0.00 and "transactions_attempted" = 0;
update "accounts" set "account_balance" = 10 where "username" = 'anthony';
--4.How do you select all users that have attempted 9 or more transactions?
select * from "accounts" where "transactions_attempted" >= 9;
--5.How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
select * from "accounts" ORDER BY "account_balance" DESC LIMIT 3;
--6.How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?
elect * from "accounts" ORDER BY "account_balance" ASC LIMIT 3;
--.7 How do you get all users with account balances that are more than $100?
select * from "accounts" where "account_balance" > 100;
--8. How do you add a new account?
INSERT INTO "accounts" (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('sam', 'topeka', 3, 3, 3333333)
--9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE from "accounts" where "city" in ('miami', 'phoenix') and "transactions_completed" < 5;
