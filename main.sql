-- To begin drop the table if it already exists
DROP TABLE IF EXISTS events;

-- Second create a new table called events
CREATE TABLE IF NOT EXISTS events (
    event_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    created_at DATE,
    PRIMARY KEY (event_id)
);

-- Show the tables and it should list the events table
SHOW TABLES;

-- Show the schema for a table
DESCRIBE events;

-- Insert some data into the events table
INSERT INTO events (title, created_at) 
VALUES 
    ('My First Event', NOW()),
    ('My Second Event', NOW()),
    ('My Third Event', NOW());

-- Query the database to show some events
SELECT * FROM events;

-- Delete the first event from the database
DELETE FROM events WHERE event_id = 1;

-- Add a new entry to the database
INSERT INTO events (title, created_at)
VALUES ('My Fourth Event', NOW());

-- Query the database by text in title
SELECT * FROM events WHERE title LIKE '%Third%';

-- Select all events created after a certain date
SELECT event_id, title FROM events WHERE created_at > '2021-01-01';