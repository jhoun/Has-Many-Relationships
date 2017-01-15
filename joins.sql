SELECT *
  FROM users

SELECT *
  FROM posts
  WHERE users_id = 100;


SELECT first_name, last_name, posts.*
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users_id = 200;

SELECT username, posts.*
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE first_name = 'Norene'
  AND last_name = 'Schmitt';

SELECT users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE posts.create_at > 'January 1, 2015';

SELECT posts.title, posts.content, users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users.create_at > 'January 1, 2015';

SELECT comments.*, posts.title AS posts_title
  FROM posts
  INNER JOIN comments
  ON posts.users_id = comments.post_id