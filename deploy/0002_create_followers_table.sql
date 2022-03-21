-- Deploy twitter-clone-sqitch-project:0002_create_followers_table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS twitter_clone.followers_table(
  follower_id BIGINT NOT NULL,
  followed_id BIGINT NOT NULL,
  created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,

  PRIMARY KEY (follower_id,followed_id),
  FOREIGN KEY(follower_id) REFERENCES twitter_clone.users_table(id),
  FOREIGN KEY(followed_id) REFERENCES twitter_clone.users_table(id)

);

COMMIT;
