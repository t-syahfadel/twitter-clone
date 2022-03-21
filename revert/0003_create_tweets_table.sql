-- Revert twitter-clone-sqitch-project:0003_create_tweets_table from pg

BEGIN;

DROP TABLE IF EXISTS twitter_clone.tweets_table;

COMMIT;
