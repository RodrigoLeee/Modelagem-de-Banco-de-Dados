-- Table 'users'

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  password VARCHAR(12),
  city VARCHAR(50),
  state VARCHAR(50),
  profile_picture_url VARCHAR,
  profile_description INTEGER,
  id_type_users INTEGER
);

-- Table 'type_users'

DROP TABLE IF EXISTS type_users;

CREATE TABLE type_users (
  id SERIAL PRIMARY KEY,
  type INTEGER
);

-- Table 'feed_and_community'

DROP TABLE IF EXISTS feed_and_community;

CREATE TABLE feed_and_community (
  id SERIAL PRIMARY KEY,
  id_users INTEGER NOT NULL,
  post_content VARCHAR(250),
  post_image_url VARCHAR,
  created_when TIMESTAMP,
  id_type_posts INTEGER,
  post_title INTEGER
);

-- Table 'actions'

DROP TABLE IF EXISTS actions;

CREATE TABLE actions (
  id SERIAL PRIMARY KEY,
  action VARCHAR
);

-- Table 'news_feed_actions'

DROP TABLE IF EXISTS news_feed_actions;

CREATE TABLE news_feed_actions (
  id SERIAL PRIMARY KEY,
  id_actions INTEGER,
  id_news_feed INTEGER
);

-- Table 'type_posts'

DROP TABLE IF EXISTS type_posts;

CREATE TABLE type_posts (
  id SERIAL PRIMARY KEY,
  type_post VARCHAR(25)
);

-- Table 'news_feed_connections'

DROP TABLE IF EXISTS news_feed_connections;

CREATE TABLE news_feed_connections (
  id SERIAL PRIMARY KEY,
  id_news_feed INTEGER,
  id_connections INTEGER
);

-- Table 'connections'

DROP TABLE IF EXISTS connections;

CREATE TABLE connections (
  id SERIAL PRIMARY KEY,
  id_users INTEGER,
  connections VARCHAR
);

-- Foreign Keys

ALTER TABLE users ADD COLUMN id_type_users INTEGER REFERENCES type_users(id);
ALTER TABLE feed_and_community ADD COLUMN id_users INTEGER REFERENCES users(id);
ALTER TABLE feed_and_community ADD COLUMN id_type_posts INTEGER REFERENCES type_posts(id);
ALTER TABLE news_feed_actions ADD COLUMN id_actions INTEGER REFERENCES actions(id);
ALTER TABLE news_feed_actions ADD COLUMN id_news_feed INTEGER REFERENCES feed_and_community(id);
ALTER TABLE news_feed_connections ADD COLUMN id_news_feed INTEGER REFERENCES feed_and_community(id);
ALTER TABLE news_feed_connections ADD COLUMN id_connections INTEGER REFERENCES connections(id);
ALTER TABLE connections ADD COLUMN id_users INTEGER REFERENCES users(id);