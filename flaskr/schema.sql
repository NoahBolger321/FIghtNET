DROP TABLE IF EXISTS bank;
DROP TABLE IF EXISTS post;

CREATE TABLE account(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    acct_name TEXT UNIQUE NOT NULL,
    acct_pass TEXT NOT NULL,
    balance REAL NOT NULL DEFAULT 0.00
);

CREATE TABLE transactions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id INTEGER NOT NULL,
    type INTEGER NOT NULL,
    occurred TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES account (id)
)