CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8mb4 COMMENT '';

CREATE TABLE
    IF NOT EXISTS cars(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
        make VARCHAR(255) NOT NULL,
        model VARCHAR(255) NOT NULL,
        price MEDIUMINT NOT NULL,
        year SMALLINT NOT NULL DEFAULT 1990,
        hasTires BOOLEAN NOT NULL DEFAULT true,
        createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        color VARCHAR(8) DEFAULT '#FFFFFF'
    ) default charset utf8mb4 COMMENT 'emojis enabled 🦞';

INSERT INTO
    cars(
        make,
        model,
        price,
        year,
        hasTires,
        color
    )
values (
        'mazda',
        'miata',
        5000,
        2005,
        true,
        DEFAULT
    );

INSERT INTO
    cars(
        make,
        model,
        price,
        year,
        hasTires
    )
values (
        'mazda',
        'miata',
        5000,
        2005,
        true
    ), (
        'subaru',
        'impreza',
        13000,
        2013,
        true
    );

SELECT * FROM cars ORDER BY price DESC LIMIT 1;

SELECT * FROM cars WHERE make = 'mazda' AND model = 'miata';

SELECT * FROM cars WHERE id = 4;

UPDATE cars SET model = 'rx-7', color = '#000000' WHERE id = 4;

DELETE FROM cars WHERE id = 1 ;

DROP TABLE cars;

CREATE TABLE
    IF NOT EXISTS houses(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
        beds TINYINT NOT NULL,
        baths TINYINT NOT NULL,
        floors TINYINT NOT NULL,
        price BIGINT NOT NULL,
        imgUrl VARCHAR(500) NOT NULL,
        address VARCHAR(255) NOT NULL,
        createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ) default charset utf8mb4 COMMENT 'emojis enabled 🦞';

INSERT INTO
    cars(
        beds,
        baths,
        floors,
        price,
        imgUrl,
        address,
    )
values (
        3,
        2,
        2,
        450000,
        'https://rew-feed-images.global.ssl.fastly.net/imls/_cloud_media/property/residential/98862651-1-80ab72bdf6dddb8bd9dd7d165052a618-m.jpg',
        '5678 Maple Street, Apt 3B, Springdale, IL 60484'
    ), (
        5,
        4,
        3,
        12000000,
        "https://s42814.pcdn.co/wp-content/uploads/2022/07/0322_NB_Idea_House_Mountain_Modern_Preview_Screen_Shot_2022_03_29_at_11.42.36_AM-scaled-1024x576.jpg.optimal.jpg",
        "123 Main Avenue, Suite 45, Hillcrest, CA 92103"
    );