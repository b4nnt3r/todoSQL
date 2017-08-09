DROP TABLE IF EXISTS todo;

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
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('3', 'Fix AC', 'Florida is hot', '1', '2015-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('4', 'Buy a new t-shirt', 'size large', '3', '2017-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('5', 'Apply for jobs', 'Make some money', '1', '2017-08-08');


INSERT INTO todo (id, title, details, priority, created_at, completed_at) VALUES ('6', 'Search the web', 'Find cool stuff', '1', '2017-08-08', '2017-08-09');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('7', 'Feed an Elephant', 'Cheeseburgers', '2', '2016-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('8', 'Build a 3DUI', 'Change the World', '2', '2016-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('9', 'Do the Dew', 'Mountain Dew', '4', '2015-08-08');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('10', 'Build a sand castle', 'Use sand', '3', '2017-08-07');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('11', 'Write new resume', 'Seriously', '1', '2017-08-07');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('12', 'Buy a new laptop', 'In my dreams', '1', '2017-08-07');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('13', 'Hang guitars on the wall', 'at home', '2', '2017-08-09');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('14', 'Write a movie', 'just for fun', '3', '2017-08-09');
INSERT INTO todo (id, title, details, priority, created_at) VALUES ('15', 'Build a website', 'online', '1', '2017-08-09');

SELECT * FROM todo WHERE priority = 3;

SELECT COUNT(title) FROM todo WHERE completed_at is null GROUP BY priority, todo.id;

SELECT COUNT(created_at) FROM todo WHERE created_at > '2017-07-00' GROUP BY priority, todo.id;

SELECT *, MAX(created_at) FROM todo WHERE priority = 1 GROUP BY priority, todo.id LIMIT 1;
