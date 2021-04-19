CREATE TABLE Books (id INTEGER ,name TEXT ,rating INTEGER,release_year INTEGER);

INSERT INTO books VALUES (1,"Harry Potter", 10,1994);
INSERT INTO books VALUES (2,"Cinderlla",7,1980);
INSERT INTO books VALUES (3,"Prince and the Poor",8,1960);
INSERT INTO books VALUES (3,"King Lear",7,1995);
INSERT INTO books VALUES (3,"ALice in the Wonderland",9.5,2000);
INSERT INTO books VALUES (3,"Snow White",5,1988);

SELECT * FROM books; /*Quereing the table*/
SELECT * FROM books where rating >= 4 ;
SELECT * FROM books ORDER by release_year;
SELECT * FROM books WHERE rating>=6 ORDER by release_year;

SELECT * ,MAX(release_year) FROM Books;
SELECT * ,MIN(release_year) FROM Books;