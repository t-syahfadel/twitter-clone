-- Revert twitter-clone-sqitch-project:0001_create_users_table from pg

BEGIN;

DROP TABLE IF EXISTS twitter_clone.users_table;
DROP SCHEMA IF EXISTS twitter_clone;


COMMIT;
