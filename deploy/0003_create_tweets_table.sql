-- Deploy twitter-clone-sqitch-project:0003_create_tweets_table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS twitter_clone.tweets_table (
id     	     BIGSERIAL NOT NULL,
parent_id    BIGINT    NOT NULL,
user_id	     BIGINT    NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY(parent_id) REFERENCES twitter_clone.tweets_table(id),
FOREIGN KEY(user_id) REFERENCES twitter_clone.users_table(id)
);

COMMIT;
