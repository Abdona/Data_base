CREATE TABLE Books (id INTEGER PRIMARY KEY AUTO INCREMENT,name TEXT ,rating INTEGER,release_year INTEGER,genre TEXT,price INTEGER);

INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Harry Potter", 10,1994,"Fantasy",12);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Cinderlla",7,1980,"Fairy tale",13);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Prince and the Pauper",8,1960,"Children's literature‎
",20);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("King Lear",7,1995,"Drama",10);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("ALice in the Wonderland",9.5,2000,"Fantasy",8);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Snow White",5,1988,"Fairy tale",30);

INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("David Copperfeld", 10,1996,"Fantasy",12);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Hercules",7,2001,"Fairy tale",13);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Pinochio",8,1950,"Children's literature‎
",20);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("The Pyramids",7,2005,"Drama",10);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("The Nile",9.5,2010,"Fantasy",8);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Snow White Second Edition",5,200,"Fairy tale",30);

INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Hunde und Katzen",7,1995,"Drama",10);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Die Schwarze Tigerin",9.5,2000,"Fantasy",8);
INSERT INTO Books (name,rating,release_year,genre,price)VALUES ("Was für ein Tag",5,1988,"Fairy tale",30);

SELECT * FROM Books; /*Quereing the table*/
SELECT * FROM Books where rating >= 4 ;
SELECT * FROM Books ORDER by release_year;
SELECT * FROM Books WHERE rating>=6 ORDER by release_year;

SELECT * ,MAX(release_year) FROM Books;
SELECT * ,MIN(release_year) FROM Books;

SELECT name FROM Books WHERE release_year>1995 AND price<20;
SELECT release_year FROM Books WHERE name IN ("Harry Potter","Cinderlla")
/*SELECT title FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre="Pop");*/
SELECT genre FROM Books,SUM(price) AS cost GROUP BY genre;
SELECT genre FROM Books,SUM(price) AS cost GROUP BY genre HAVING cost>20; 