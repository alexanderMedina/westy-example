
-- +migrate Up
CREATE TABLE users (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    role varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    dni integer NOT NULL,
    hotel_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

-- +migrate Down
DROP TABLE users;
