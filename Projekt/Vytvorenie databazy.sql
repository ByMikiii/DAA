CREATE TABLE `users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(16) UNIQUE NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(32) UNIQUE NOT NULL,
  `password` varchar(32) NOT NULL,
  `wallet` float,
  `country_id` int NOT NULL,
  `address` varchar(64) NOT NULL,
  `date_created` timestamp NOT NULL
);

CREATE TABLE `country` (
  `country_id` int PRIMARY KEY AUTO_INCREMENT,
  `country_name` varchar(32) NOT NULL
);

CREATE TABLE `library` (
  `library_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL
);

CREATE TABLE `games` (
  `game_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(32) UNIQUE NOT NULL,
  `genre_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `release_date` timestamp NOT NULL
);

CREATE TABLE `publishers` (
  `publisher_id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(32) UNIQUE NOT NULL,
  `email` varchar(32) UNIQUE NOT NULL
);

CREATE TABLE `genre` (
  `genre_id` int PRIMARY KEY AUTO_INCREMENT,
  `genre_name` varchar(32) UNIQUE NOT NULL
);

CREATE TABLE `price` (
  `price_id` int PRIMARY KEY AUTO_INCREMENT,
  `game_id` int NOT NULL,
  `original_price` float NOT NULL,
  `sale_price` float
);

CREATE TABLE `invoice` (
  `invoice_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_price` float NOT NULL,
  `date` timestamp NOT NULL
);

CREATE TABLE `reviews` (
  `review_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  `review` varchar(255) NOT NULL
);

CREATE TABLE `cart_items` (
  `cart_items_id` int PRIMARY KEY AUTO_INCREMENT,
  `game_id` int NOT NULL,
  `invoice_id` int NOT NULL
);

ALTER TABLE `games` ADD FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`);

ALTER TABLE `games` ADD FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

ALTER TABLE `invoice` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `price` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `cart_items` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `cart_items` ADD FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`);

ALTER TABLE `library` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `library` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `users` ADD FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);
