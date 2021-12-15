CREATE DATABASE online_herny_obchod;
USE online_herny_obchod;

CREATE TABLE `users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `wallet` float,
  `address` varchar(255)
);

CREATE TABLE `games` (
  `game_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `genre_id` int,
  `publisher_id` int,
  `release_date` timestamp
);

CREATE TABLE `publishers` (
  `publisher_id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255),
  `email` varchar(255)
);

CREATE TABLE `genre` (
  `genre_id` int PRIMARY KEY AUTO_INCREMENT,
  `genre_name` varchar(255)
);

CREATE TABLE `price` (
  `price_id` int PRIMARY KEY AUTO_INCREMENT,
  `game_id` float,
  `original_price` float,
  `sale_price` float
);

CREATE TABLE `invoice` (
  `invoice_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `total_price` float,
  `date` timestamp
);

CREATE TABLE `reviews` (
  `review_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `game_id` int,
  `review` varchar(255)
);

CREATE TABLE `cart_items` (
  `cart_items_id` int PRIMARY KEY AUTO_INCREMENT,
  `game_id` int,
  `invoice_id` int
);

ALTER TABLE `games` ADD FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`);
ALTER TABLE `games` ADD FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);
ALTER TABLE `invoice` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `games` ADD FOREIGN KEY (`game_id`) REFERENCES `price` (`game_id`);
ALTER TABLE `users` ADD FOREIGN KEY (`user_id`) REFERENCES `reviews` (`user_id`);
ALTER TABLE `games` ADD FOREIGN KEY (`game_id`) REFERENCES `reviews` (`game_id`);
ALTER TABLE `games` ADD FOREIGN KEY (`game_id`) REFERENCES `cart_items` (`game_id`);
ALTER TABLE `invoice` ADD FOREIGN KEY (`invoice_id`) REFERENCES `cart_items` (`invoice_id`);
