-- Deploy twitter-clone-sqitch-project:0004_create_tags_table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS twitter_clone.tags_table(
id     BIGSERIAL NOT NULL,
tag    TEXT NOT NULL,

PRIMARY KEY(id)
);

COMMIT;
