
-- +migrate Up
CREATE TABLE room_types (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    price FLOAT(10,8) ,
    hotel_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

-- +migrate Down
DROP TABLE room_types;
