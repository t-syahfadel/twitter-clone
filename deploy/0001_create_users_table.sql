-- Deploy twitter-clone-sqitch-project:0001_create_users_table to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS twitter_clone;

CREATE TABLE IF NOT EXISTS twitter_clone.users_table (
 id    	      	BIGSERIAL     NOT NULL,
 email_address  TEXT       NOT NULL,
 username	      TEXT       NOT NULL,
 password     	TEXT       NOT NULL,
 created_at	    TIMESTAMP  WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL ,
 updated_at   	TIMESTAMP  WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL ,

PRIMARY KEY (id)
);

CREATE INDEX IF NOT EXISTS username_idx ON twitter_clone.users_table (username,password);

COMMIT;
