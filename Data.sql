CREATE TABLE Books (id INTEGER ,name TEXT ,rating INTEGER);

INSERT INTO books VALUES (1,"Harry Potter", 5);
INSERT INTO books VALUES (2,"Cinderlla",4);
INSERT INTO books VALUES (3,"King Lear",3.5);

SELECT * FROM books where rating >= 4 ;
