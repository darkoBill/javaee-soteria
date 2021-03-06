-- DDL for PostgreSQL up to 9 and MariaDB/MySQL 5 or above
-- For PostgreSQL 10 and above please use schema_postgres10.sql
CREATE TABLE account(
   id SERIAL PRIMARY KEY,
   username VARCHAR(100) UNIQUE NOT NULL,
   password VARCHAR(255) NOT NULL,
   email VARCHAR(100) UNIQUE NOT NULL,
   active BOOLEAN
);

CREATE TABLE token(
   id SERIAL PRIMARY KEY,
   account_id INTEGER REFERENCES account(id),
   token_hash VARCHAR(255) NOT NULL,
   token_TYPE VARCHAR(100),
   ip_address VARCHAR(100),
   description VARCHAR(255),
   created TIMESTAMP,
   expiration TIMESTAMP
)
