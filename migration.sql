SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS card_project_db;

SHOW DATABASES;

USE card_project_db;

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
     image VARCHAR(255),
     category VARCHAR(255) NOT NULL,
     PRIMARY KEY (id),
     FOREIGN KEY (user_id) REFERENCES users(id)
         ON DELETE CASCADE
);

-- Inserting data into the "users" table
# INSERT INTO users (username, password, email) VALUES
#     ( 'john_doe', 'password123', 'john@example.com'),
#     ( 'jane_smith', 'secret456', 'jane@example.com'),
#     ( 'mike_jones', 'pass789', 'mike@example.com'),
#     ( 'sarah_walker', 'sarahpass', 'sarah@example.com'),
#     ( 'david_brown', 'david123', 'david@example.com');

INSERT INTO `ads` (user_id, title, description, cost, image, category) VALUES
                        (1,'Michael Jordan Rookie Card','Rare Michael Jordan rookie card in mint condition.',5000.00,'https://cconnect.s3.amazonaws.com/wp-content/uploads/2019/03/1986-87-Fleer-Michael-Jordan-57-RC-Authentic-Rookie-Card.jpg','Sports'),
                        (1,'Charizard Pokémon Card','1st Edition Charizard card in near-mint condition.',3000.00,'https://product-images.tcgplayer.com/fit-in/870x870/106999.jpg','Pokemon'),
                        (1,'Black Lotus Magic Card','Limited Edition Black Lotus card, highly sought after.',10000.00,'https://product-images.tcgplayer.com/fit-in/870x870/21480.jpg','Magic'),
                        (1,'Kobe Bryant Autographed Card','Autographed Kobe Bryant card with certificate of authenticity.',2500.00,'https://auctionofchampions.com/ItemImages/000053/11119cards82009_lg.jpeg','Sports'),
                        (1,'Mewtwo Pokémon Card','Holographic Mewtwo card, excellent condition.',800.00,'https://product-images.tcgplayer.com/fit-in/870x870/42445.jpg','Pokemon'),
                        (1,'Tropical Island Magic Card','Tropical Island dual land card, great addition to your deck.',1500.00,'https://product-images.tcgplayer.com/fit-in/870x870/8932.jpg','Magic'),
                        (1,'LeBron James Rookie Card','LeBron James rookie card, rare find.',4000.00,'https://beckett-www.s3.amazonaws.com/news/news-content/uploads/2020/06/2003-04-Upper-Deck-Exquisite-Rookie-Auto-Patch-Parallel-LeBron-James-BGS-9-5-Goldin-July-2020.jpg','Sports'),
                        (1,'Pikachu Pokémon Card','Classic Pikachu card, perfect for any Pokémon collector.',200.00,'https://product-images.tcgplayer.com/42402.jpg','Pokemon'),
                        (1,'Time Walk Magic Card','Time Walk card, iconic card for Magic players.',3000.00,'https://product-images.tcgplayer.com/fit-in/870x870/9231.jpg','Magic'),
                        (1,'Wayne Gretzky Autographed Card','Autographed Wayne Gretzky card, a true hockey legend.',1800.00,'https://cdn11.bigcommerce.com/s-karer354/images/stencil/1280x1280/products/232030/905827/DM_1_11_23_1274__99320.1673488293.jpg?c=2','Sports'),
                        (1,'Blastoise Pokémon Card','Rare Blastoise card, a must-have for Pokémon fans.',500.00,'https://product-images.tcgplayer.com/fit-in/870x870/42360.jpg','Pokemon'),
                        (1,'Mox Jet Magic Card','Mox Jet card, powerful artifact for Magic decks.',2500.00,'https://product-images.tcgplayer.com/fit-in/870x870/8842.jpg','Magic'),
                        (1,'Tom Brady Autographed Card','Autographed Tom Brady card, a collectible for football fans.',1500.00,'https://cdn11.bigcommerce.com/s-karer354/images/stencil/1280x1280/products/226454/885478/D_8_5_22_1012__42950.1659742240.jpg?c=2','Sports'),
                        (1,'Zapdos Pokémon Card','Holographic Zapdos card, electric type Pokémon.',300.00,'https://product-images.tcgplayer.com/fit-in/870x870/42356.jpg','Pokemon'),
                        (1,'Jace, the Mind Sculptor Magic Card','Jace, the Mind Sculptor card, a planeswalker of immense power.',2000.00,'https://product-images.tcgplayer.com/fit-in/870x870/158250.jpg','Magic'),
                        (1,'Mickey Mantle Rookie Card','The Holy Grail of baseball cards.',10000000.00,'https://imageio.forbes.com/blogs-images/davidseideman/files/2018/04/resizedmantle.jpg?format=jpg&width=960','Sports');

