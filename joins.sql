-- 1
SELECT *
  FROM users

-- 2
SELECT *
  FROM posts
  WHERE users_id = 100;

-- 3
SELECT first_name, last_name, posts.*
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users_id = 200;

-- 4
SELECT username, posts.*
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE first_name = 'Norene'
  AND last_name = 'Schmitt';

-- 5
SELECT users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE posts.create_at > 'January 1, 2015';

-- 6
SELECT posts.title, posts.content, users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users.create_at > 'January 1, 2015';

-- 7
SELECT comments.*, posts.title AS posts_title
  FROM posts
  INNER JOIN comments
  ON posts.users_id = comments.post_id

-- 8
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON posts.users_id = comments.post_id
  WHERE posts.create_at < 'January 1, 2015';

-- 9
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON posts.users_id = comments.post_id
  WHERE posts.create_at > 'January 1, 2015';

-- 10
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON posts.users_id = comments.post_id
  WHERE comments.body LIKE '%USB%';

-- 11
SELECT posts.title AS post_title, users.first_name, users.last_name, comments.body AS comment_body
  FROM users
  INNER JOIN posts
  ON users.id = posts.users_id
  INNER JOIN comments
  ON comments.post_id = posts.id
  WHERE comments.body LIKE '%matrix%';

-- 12
SELECT users.first_name, users.last_name, comments.body AS comment_body
  FROM users
  INNER JOIN posts
  ON users.id = posts.users_id
  INNER JOIN comments
  ON comments.post_id = posts.id
  WHERE comments.body LIKE '%SSL%'
  AND posts.content LIKE '%dolorum%';