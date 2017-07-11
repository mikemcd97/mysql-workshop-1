CREATE DATABASE hotel;

CREATE TABLE rooms (
    roomNumber INT PRIMARY KEY,
    floorNumber INT NOT NULL,
    capacity INT NOT NULL,
    rentable BOOLEAN NOT NULL,
    kitchen BOOLEAN NOT NULL,
    windows INT NOT NULL,
    carpet boolean NOT NULL,
    rented DATETIME,
    dateAvailable DATETIME
);

SELECT * FROM rooms WHERE dateAvailable <= [your specific date] OR IS NULL AND rentable = 0;
SELECT * FROM rooms WHERE dateAvailable <= [your specific date] OR IS NULL AND rentable = 0 AND capacity >= 3;
SELECT COUNT(*) FROM rooms WHERE rentable = 1;
SELECT COUNT(*) FROM rooms WHERE kitchen = 0;
SELECT AVG(windows) FROM rooms GROUP BY floorNumber;
SELECT COUNT(DISTINCT floorNumber) FROM rooms WHERE carpet = 0; 
