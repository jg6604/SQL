CREATE SCHEMA `new_schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `new_schema`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'This is the primary index',
  `name` VARCHAR(45) NOT NULL DEFAULT 'N/A',
  `age` INT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `new_schema`.`users` (`id`, `name`, `age`) VALUES 
  (1, 'John', 40),
  (2, 'May', 30),
  (3, 'Tim', 22);
  
  
CREATE TABLE `new_schema`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `note` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);
 
INSERT INTO `new_schema`.`orders` (`id`, `user_id`, `note`) VALUES 
  (1, 1, 'some information'), 
  (2, 2, 'some comments'),
  (3, 2, 'no comments'),
  (4, 3, 'more comments');
  
  
-- SELECT, INSERT, UPDATE and DELETE

SELECT id, name 
FROM users;


INSERT INTO users (id, name, age) 
VALUES (4, 'Harry', 33);


INSERT INTO users (id, name, age) 
VALUES (4, 'Harry', 33), (5, 'Tom', 30);


SELECT id, name 
FROM users;


SELECT * 
FROM users;


SELECT * 
FROM users
WHERE id = 2;


UPDATE users SET name = 'Andy', age = 100 
WHERE id = 2;


DELETE FROM users 
WHERE id = 1;


SELECT *
FROM users 
WHERE id = 1;


SELECT * 
FROM users 
WHERE id > 2;


SELECT * 
FROM users 
WHERE id != 1;


SELECT * 
FROM users 
WHERE height IS NULL;


SELECT * 
FROM users 
WHERE height IS NOT NULL;


SELECT * 
FROM users 
WHERE age < 40 AND height > 160;



SELECT * 
FROM users 
WHERE age < 40 OR height > 160;


SELECT * 
FROM users  
WHERE id < 4 AND (age > 30 OR height > 175);


SELECT * 
FROM users 
WHERE id IN (1, 3);


SELECT * 
FROM users 
WHERE id NOT IN (1, 4);


SELECT * 
FROM users 
WHERE height BETWEEN 160 AND 190;


SELECT * 
FROM users 
WHERE name LIKE '%a%';


SELECT * 
FROM users 
WHERE name LIKE 'J%';


SELECT * 
FROM users 
WHERE name LIKE '%y';


SELECT name,population,area
FROM world
WHERE area>=3000000 OR population>=25000000;


SELECT product_id
FROM products
WHERE low_fats='Y' AND recyclable='Y';


SELECT name
FROM customer
WHERE referee_id!=2 OR referee_id IS NULL;


SELECT employee_id,
       IF(employee_id % 2 != 0 AND name NOT LIKE 'M%', salary, 0) AS bonus
FROM Employees
ORDER BY employee_id;


UPDATE salary SET sex = if(sex='m','f','m');


SELECT DISTINCT age 
FROM users;

-- limiting the number of items displayed 
-- and skipping the first specified number of items.
SELECT * 
FROM users LIMIT 3 OFFSET 1;


SELECT * 
FROM users LIMIT 3 OFFSET 0;


SELECT * 
FROM users 
ORDER BY age;


SELECT * 
FROM users 
ORDER BY age ASC;


SELECT * 
FROM users 
ORDER BY age DESC;


SELECT * 
FROM users 
ORDER BY age DESC, height DESC;


SELECT age 
FROM users 
GROUP BY age;


SELECT COUNT(*), age 
FROM users 
GROUP BY age;


SELECT COUNT(*) AS age_count, age
FROM users
GROUP BY age
ORDER BY age_count;


SELECT author_id as id
FROM views
WHERE author_id=viewer_id
GROUP BY author_id
ORDER BY author_id ASC;


SELECT COUNT(*) AS user_count 
FROM users 
WHERE id > 1;


SELECT SUM(age) AS sum_of_user_ages 
FROM users;


SELECT AVG(height) AS avg_user_height 
FROM users;


SELECT MIN(height) AS user_min 
FROM users;


SELECT MAX(height) AS user_max 
FROM users;


SELECT CONCAT(id, '-', name) AS identification, age 
FROM users;


SELECT CONCAT(id, '-', name) AS identification, age 
FROM users
HAVING identification LIKE '%J%';


SELECT date_id,make_name,count(distinct lead_id) as unique_leads,count(distinct partner_id) as unique_partners
FROM DailySales
GROUP BY 1,2;


SELECT user_id,count(follower_id) as followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id ASC;


SELECT player_id,min(event_date) as first_login
FROM activity
GROUP BY player_id


SELECT Email
FROM person
GROUP BY email
HAVING COUNT(*)>1;


SELECT actor_id,director_id
FROM actordirector
GROUP BY actor_id,director_id
HAVING COUNT(*)>=3;


SELECT * 
FROM users
LEFT JOIN orders ON users.id = orders.user_id;


SELECT * 
FROM users
RIGHT JOIN orders ON users.id = orders.user_id;


SELECT * 
FROM users
INNER JOIN orders ON users.id = orders.user_id;


SELECT orders.id AS order_id , name 
FROM users
INNER JOIN orders ON users.id = orders.user_id;


SELECT * FROM orders
WHERE user_id IN (
  SELECT id FROM users
  WHERE name LIKE '%j%'
);






















