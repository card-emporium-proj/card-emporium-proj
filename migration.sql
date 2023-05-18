SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS card_project_db;

SHOW DATABASES;

use card_project_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

-- Inserting data into the "users" table
INSERT INTO users (username, password, email) VALUES
    ( 'john_doe', 'password123', 'john@example.com'),
    ( 'jane_smith', 'secret456', 'jane@example.com'),
    ( 'mike_jones', 'pass789', 'mike@example.com'),
    ( 'sarah_walker', 'sarahpass', 'sarah@example.com'),
    ( 'david_brown', 'david123', 'david@example.com');

-- Inserting data into the "ads" table
INSERT INTO ads (user_id, title, description, cost, image, category) VALUES
    (1, 'Michael Jordan Rookie Card', 'Rare Michael Jordan rookie card in mint condition.', 5000.00, 'image1.jpg', 'Sports'),
    (2, 'Charizard Pokémon Card', '1st Edition Charizard card in near-mint condition.', 3000.00, 'image2.jpg', 'Pokémon'),
    (3, 'Black Lotus Magic Card', 'Limited Edition Black Lotus card, highly sought after.', 10000.00, 'image3.jpg', 'Magic'),
    (4, 'Kobe Bryant Autographed Card', 'Autographed Kobe Bryant card with certificate of authenticity.', 2500.00, 'image4.jpg', 'Sports'),
    (5, 'Mewtwo Pokémon Card', 'Holographic Mewtwo card, excellent condition.', 800.00, 'image5.jpg', 'Pokémon'),
    (1, 'Tropical Island Magic Card', 'Tropical Island dual land card, great addition to your deck.', 1500.00, 'image6.jpg', 'Magic'),
    (2, 'LeBron James Rookie Card', 'LeBron James rookie card, rare find.', 4000.00, 'image7.jpg', 'Sports'),
    (3, 'Pikachu Pokémon Card', 'Classic Pikachu card, perfect for any Pokémon collector.', 200.00, 'image8.jpg', 'Pokémon'),
    (4, 'Time Walk Magic Card', 'Time Walk card, iconic card for Magic players.', 3000.00, 'image9.jpg', 'Magic'),
    (5, 'Wayne Gretzky Autographed Card', 'Autographed Wayne Gretzky card, a true hockey legend.', 1800.00, 'image10.jpg', 'Sports'),
    (1, 'Blastoise Pokémon Card', 'Rare Blastoise card, a must-have for Pokémon fans.', 500.00, 'image11.jpg', 'Pokémon'),
    (2, 'Mox Jet Magic Card', 'Mox Jet card, powerful artifact for Magic decks.', 2500.00, 'image12.jpg', 'Magic'),
    (3, 'Tom Brady Autographed Card', 'Autographed Tom Brady card, a collectible for football fans.', 1500.00, 'image13.jpg', 'Sports'),
    (4, 'Zapdos Pokémon Card', 'Holographic Zapdos card, electric type Pokémon.', 300.00, 'image14.jpg', 'Pokémon'),
    (5, 'Jace, the Mind Sculptor Magic Card', 'Jace, the Mind Sculptor card, a planeswalker of immense power.', 2000.00, 'image15.jpg', 'Magic');
