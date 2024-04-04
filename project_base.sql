CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    registration_data DATE NOT NULL,
    avatar VARCHAR(255)
);

CREATE TABLE Profile (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    birth_date DATE,
    avatar VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Post (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author_id INT,
    text TEXT NOT NULL,
    create_at DATETIME NOT NULL,
    image VARCHAR(255),
    FOREIGN KEY (author_id) REFERENCES User(id)
);

CREATE TABLE Comment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author_id INT,
    post_id INT,
    text TABLE NOT NULL,
    create_at DATETIME NOT NULL,
    FOREIGN KEY (author_id) REFERENCES User(id),
    FOREIGN KEY (post_id) REFERENCES Post(id)
);

CREATE TABLE Like (
    id INT PRIMARY KEY AUTO_INCREMENT
    author_id INT,
    post_id INT,
    create_at DATETIME NOT NULL,
    FOREIGN KEY (author_id) REFERENCES User(id),
    FOREIGN KEY (post_id) REFERENCES Post(id)
);