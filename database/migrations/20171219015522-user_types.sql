-- +migrate Up
CREATE TABLE user_types (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255),
    hotel_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

-- +migrate Down
DROP TABLE user_types;
