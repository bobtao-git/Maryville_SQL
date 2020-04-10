
CREATE TABLE tree (
    id integer NOT NULL,
    pid integer,
    name character varying NOT NULL
);



INSERT INTO tree (id, pid, name) VALUES (1, NULL, 'John');
INSERT INTO tree (id, pid, name) VALUES (2, 1, 'Brian');
INSERT INTO tree (id, pid, name) VALUES (3, 2, 'Adam');
INSERT INTO tree (id, pid, name) VALUES (4, NULL, 'Jack');
INSERT INTO tree (id, pid, name) VALUES (5, 4, 'Gary');
INSERT INTO tree (id, pid, name) VALUES (6, 4, 'Gerry');
INSERT INTO tree (id, pid, name) VALUES (7, 5, 'Sam');
