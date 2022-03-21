-- Revert twitter-clone-sqitch-project:0002_create_followers_table from pg

BEGIN;

DROP TABLE IF EXISTS twitter_clone.followers_table;

COMMIT;
