-- Revert twitter-clone-sqitch-project:0004_create_tags_table from pg

BEGIN;

DROP TABLE IF EXISTS twitter_clone.tags_table;

COMMIT;
