CREATE TABLE todo (
id SERIAL PRIMARY KEY ,
title VARCHAR(255) NOT NULL,
details TEXT,
priority INTEGER DEFAULT 1 NOT NULL,
created_at DATE NOT NULL,
completed_at DATE
);

INSERT INTO todo (id, title, details, priority, created_at, completed_at) VALUES ('1', 'Wash Truck', 'Make sure to wax', '1', '2017-08-08', '2017-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('2', 'Dishes', 'Change sign on machine', '2', '2017-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('3', 'Fix AC', 'Florida is hot', '1', '2017-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('4', 'Buy a new t-shirt', 'size large', '3', '2017-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('5', 'Apply for jobs', 'Make some money', '1', '2017-08-08');

SELECT title, completed_at
FROM todo
WHERE completed_at IS NULL;

SELECT title, priority
FROM todo
WHERE priority > 1;

UPDATE todo
SET completed_at = '2017-8-08'
WHERE id = 2;

DELETE FROM todo
WHERE completed_at
IS NOT NULL;
