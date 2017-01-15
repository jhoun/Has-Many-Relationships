


DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTS has_many_user;


CREATE USER has_many_user;


CREATE DATABASE has_many_blogs with OWNER has_many_user;

\c has_many_blogs has_many_user

drop table if exists comments;

drop table if exists posts;

drop table if exists users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username character varying(90) NOT NULL,
  first_name character varying(90) NOT NULL,
  last_name character varying(90) NOT NULL,
  create_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title character varying(90) DEFAULT NULL,
  url character varying(150) DEFAULT NULL,
  content text DEFAULT NULL,
  create_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now(),
  users_id integer REFERENCES users(id)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body character varying(510),
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now(),
  users_id integer REFERENCES users(id),
  post_id integer REFERENCES posts(id)
);

\i scripts/blog_data.sql