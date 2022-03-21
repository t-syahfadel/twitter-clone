-- Revert twitter-clone-sqitch-project:0005_create_tweet_tags_table from pg

BEGIN;

DROP TABLE IF EXISTS twitter_clone.tweet_tags_table;

COMMIT;
