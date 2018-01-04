
-- +migrate Up
CREATE TABLE reservations (
    id int NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    check_in DATETIME NOT NULL,
    check_out DATETIME NOT NULL,
    room_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (room_id) REFERENCES room(id)
);

-- +migrate Down
DROP TABLE reservations;
