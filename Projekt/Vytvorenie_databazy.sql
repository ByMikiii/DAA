CREATE DATABASE online_herny_obchod;

CREATE TABLE Games(
    game_id INT AUTO_INCREMENT, PRIMARY KEY(game_id),
    name VARCHAR(25),
    genre_id INT,
    publisher_id INT,
    release_date TIMESTAMP,
    KEY(genre_id),
    KEY(publisher_id),
    FOREIGN KEY (genre_id) REFERENCES Genres (genre_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers (publisher_id)
    );

CREATE TABLE Users(
    user_id INT AUTO_INCREMENT, PRIMARY KEY(user_id),
    username VARCHAR(10),
    email VARCHAR(30),
    password VARCHAR(30),
    wallet FLOAT,
    address VARCHAR(30)
);

CREATE TABLE Price(
    price_id INT AUTO_INCREMENT, PRIMARY KEY(price_id),
    original_price FLOAT,
    sale_price FLOAT,
    game_id INT,
    KEY(game_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

CREATE TABLE Genres(
    genre_id INT AUTO_INCREMENT, PRIMARY KEY(genre_id),
    genre_name VARCHAR(20)
);

CREATE TABLE Publishers(
    publisher_id INT AUTO_INCREMENT, PRIMARY KEY(publisher_id),
    username VARCHAR(20),
    email VARCHAR (30)
);

CREATE TABLE Reviews(
    review_id INT AUTO_INCREMENT, PRIMARY KEY(review_id),
    review VARCHAR(255),
    user_id INT,
    game_id INT,
    KEY(user_id),
    KEY(game_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

CREATE TABLE Cart(
    cart_id INT AUTO_INCREMENT, PRIMARY KEY(cart_id),
    user_id INT,
    invoice_id INT,
    KEY(user_id),
    KEY(invoice_id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id),
    FOREIGN KEY (invoice_id) REFERENCES Invoice (invoice_id)
);

CREATE TABLE Cart_items(
    game_id INT,
    cart_id INT,
    KEY(game_id),
    KEY(cart_id),
    FOREIGN KEY (game_id) REFERENCES Games (game_id),
    FOREIGN KEY (cart_id) REFERENCES Cart (cart_id)
);

    CREATE TABLE Invoice(
    invoice_id INT AUTO_INCREMENT, PRIMARY KEY(invoice_id),
    total_price FLOAT,
    date TIMESTAMP,
    user_id INT,
    KEY(user_id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
);
