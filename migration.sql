SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS card_project_db;

SHOW DATABASES;

use card_project_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
   id INT PRIMARY KEY AUTO_INCREMENT,
   account_id INT NOT NULL UNIQUE,
   username VARCHAR(255) NOT NULL UNIQUE,
   password VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE ads (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES users(account_id)
);

-- Inserting data into the "users" table
INSERT INTO users (account_id, username, password, email) VALUES
    (1001, 'john_doe', 'password123', 'john@example.com'),
    (1002, 'jane_smith', 'secret456', 'jane@example.com'),
    (1003, 'mike_jones', 'pass789', 'mike@example.com'),
    (1004, 'sarah_walker', 'sarahpass', 'sarah@example.com'),
    (1005, 'david_brown', 'david123', 'david@example.com');

-- Inserting data into the "ads" table
INSERT INTO ads (title, description, cost, image, category, account_id) VALUES
    ('Michael Jordan Rookie Card', 'Rare Michael Jordan rookie card in mint condition.', 5000.00, 'image1.jpg', 'Sports', 1001),
    ('Charizard Pokémon Card', '1st Edition Charizard card in near-mint condition.', 3000.00, 'image2.jpg', 'Pokémon', 1001),
    ('Black Lotus Magic Card', 'Limited Edition Black Lotus card, highly sought after.', 10000.00, 'image3.jpg', 'Magic', 1002),
    ('Kobe Bryant Autographed Card', 'Autographed Kobe Bryant card with certificate of authenticity.', 2500.00, 'image4.jpg', 'Sports', 1003),
    ('Mewtwo Pokémon Card', 'Holographic Mewtwo card, excellent condition.', 800.00, 'image5.jpg', 'Pokémon', 1004),
    ('Tropical Island Magic Card', 'Tropical Island dual land card, great addition to your deck.', 1500.00, 'image6.jpg', 'Magic', 1004),
    ('LeBron James Rookie Card', 'LeBron James rookie card, rare find.', 4000.00, 'image7.jpg', 'Sports', 1005),
    ('Pikachu Pokémon Card', 'Classic Pikachu card, perfect for any Pokémon collector.', 200.00, 'image8.jpg', 'Pokémon', 1005),
    ('Time Walk Magic Card', 'Time Walk card, iconic card for Magic players.', 3000.00, 'image9.jpg', 'Magic', 1005),
    ('Wayne Gretzky Autographed Card', 'Autographed Wayne Gretzky card, a true hockey legend.', 1800.00, 'image10.jpg', 'Sports', 1001),
    ('Blastoise Pokémon Card', 'Rare Blastoise card, a must-have for Pokémon fans.', 500.00, 'image11.jpg', 'Pokémon', 1002),
    ('Mox Jet Magic Card', 'Mox Jet card, powerful artifact for Magic decks.', 2500.00, 'image12.jpg', 'Magic', 1003),
    ('Tom Brady Autographed Card', 'Autographed Tom Brady card, a collectible for football fans.', 1500.00, 'image13.jpg', 'Sports', 1004),
    ('Zapdos Pokémon Card', 'Holographic Zapdos card, electric type Pokémon.', 300.00, 'image14.jpg', 'Pokémon', 1005),
    ('Jace, the Mind Sculptor Magic Card', 'Jace, the Mind Sculptor card, a planeswalker of immense power.', 2000.00, 'image15.jpg', 'Magic', 1003);
