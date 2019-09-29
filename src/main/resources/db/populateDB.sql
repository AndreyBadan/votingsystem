DELETE FROM user_roles;
DELETE FROM users;
DELETE FROM restaurants;
DELETE FROM meals;
DELETE FROM votes;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
('User', 'user@yandex.ru', 'password'),
('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
('ROLE_USER', 100000),
('ROLE_ADMIN', 100001);

INSERT INTO restaurants (name) VALUES
('KFC'),
('mcdonalds'),
('BURGER KING');

INSERT INTO meals (name, price, date, restaurant_id) VALUES
('Chicken Littles', 15, '2019-09-29', 100002),
('Bucket Meals', 25, '2019-09-29', 100002),
('McChicken', 10, '2019-09-29', 100003),
('Big Mac', 8, '2019-09-29', 100003),
('Whopper', 32, '2019-09-29', 100004),
('Chicken Fries', 44, '2019-09-29', 100004);

INSERT INTO votes (voting_date, user_id, restaurant_id) VALUES
('2019-09-29', 100000, 100002),
('2019-09-29', 100001, 100004);


