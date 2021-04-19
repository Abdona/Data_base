CREATE TABLE Books (id INTEGER ,name TEXT ,rating INTEGER,release_year INTEGER,genre TEXT,price INTEGER);

INSERT INTO books VALUES (1,"Harry Potter", 10,1994,"Fantasy",12);
INSERT INTO books VALUES (2,"Cinderlla",7,1980,"Fairy tale",13);
INSERT INTO books VALUES (3,"Prince and the Pauper",8,1960,"Children's literature‎
",20);
INSERT INTO books VALUES (4,"King Lear",7,1995,"Drama",10);
INSERT INTO books VALUES (5,"ALice in the Wonderland",9.5,2000,"Fantasy",8);
INSERT INTO books VALUES (6,"Snow White",5,1988,"Fairy tale",30);

INSERT INTO books VALUES (7,"David Copperfeld", 10,1996,"Fantasy",12);
INSERT INTO books VALUES (8,"Hercules",7,2001,"Fairy tale",13);
INSERT INTO books VALUES (9,"Pinochio",8,1950,"Children's literature‎
",20);
INSERT INTO books VALUES (10,"The Pyramids",7,2005,"Drama",10);
INSERT INTO books VALUES (11,"The Nile",9.5,2010,"Fantasy",8);
INSERT INTO books VALUES (12,"Snow White Second Edition",5,200,"Fairy tale",30);

INSERT INTO books VALUES (13,"Hunde und Katzen",7,1995,"Drama",10);
INSERT INTO books VALUES (14,"Die Schwarze Tigerin",9.5,2000,"Fantasy",8);
INSERT INTO books VALUES (15,"Was für ein Tag",5,1988,"Fairy tale",30);

SELECT * FROM books; /*Quereing the table*/
SELECT * FROM books where rating >= 4 ;
SELECT * FROM books ORDER by release_year;
SELECT * FROM books WHERE rating>=6 ORDER by release_year;

SELECT * ,MAX(release_year) FROM Books;
SELECT * ,MIN(release_year) FROM Books;