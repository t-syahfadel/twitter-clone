-- Deploy twitter-clone-sqitch-project:0005_create_tweet_tags_table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS twitter_clone.tweet_tags_table(
tweet_id BIGINT NOT NULL,
tag_id BIGINT NOT NULL,

PRIMARY KEY(tweet_id,tag_id),
FOREIGN KEY(tweet_id)REFERENCES twitter_clone.tweets_table(id),
FOREIGN KEY(tag_id) REFERENCES twitter_clone.tags_table(id)
);

COMMIT;
