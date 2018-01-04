
-- +migrate Up
CREATE TABLE hotels (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    PRIMARY KEY (id)
);
-- +migrate Down
DROP TABLE hotels;