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