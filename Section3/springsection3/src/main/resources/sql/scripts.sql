create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);

INSERT IGNORE INTO `users` VALUES ('Sourav', '{noop}1234', '1');
INSERT IGNORE INTO `authorities` VALUES ('Sourav', 'read');

INSERT IGNORE INTO `users` VALUE ('Tanvi', '{bcrypt}$2a$12$Sfmm3qQtSqIZUvfzYp8zQ.i9aJ36/Je7RUzIXfIxcyKMbBiPkV0V2', '1');
INSERT IGNORE INTO `authorities` VALUES ('Tanvi', 'admin');

CREATE TABLE `customer` (
    `id` int NOT NULL AUTO_INCREMENT,
    `email` varchar(50) NOT NULL,
    `password` varchar(500) NOT NULL,
    `role` varchar(45) NOT NULL
    PRIMARY KEY (`id`)
);

INSERT INTO `customer` VALUES ('sourav@gmail.com', '{noop}Sourav@1234', 'read');
INSERT INTO `customer` VALUES ('tanvi@gmail.com', '{bcrypt}$2a$12$.XTBLdTzdNukm/rRR/Ybe.YdLtXMso8NJZWs5mK3ErLMZFewkRwlC', 'admin');