CREATE TABLE `users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255),
  `fullname` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `wallet` float,
  `country` varchar(255),
  `address` varchar(255)
);

CREATE TABLE `library` (
  `library_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `game_id` int
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
  `game_id` int,
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

ALTER TABLE `price` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `cart_items` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `cart_items` ADD FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`);

ALTER TABLE `library` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `library` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);
