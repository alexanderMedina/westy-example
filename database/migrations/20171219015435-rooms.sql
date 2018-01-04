
-- +migrate Up
CREATE TABLE rooms (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255),
    floor_id int NOT NULL,
    room_type_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (floor_id) REFERENCES floor(id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(id)
);

-- +migrate Down
DROP TABLE rooms;