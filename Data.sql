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

/******************************************************************************/

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);
    
SELECT name,number_grade,round(fraction_completed*100) percent_completed FROM student_grades;

/*create a new row using case */
SELECT COUNT(number_grade) grade, CASE WHEN number_grade>90 THEN "A"
            WHEN number_grade>80 THEN "B"
            WHEN number_grade>70 THEN "C"
            ELSE "F"
            END letter_grade 
            FROM student_grades GROUP BY(letter_grade) ;
