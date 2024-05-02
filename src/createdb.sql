DROP TABLE books;

CREATE TABLE books (
  id INT,
  title VARCHAR(1000),
  author VARCHAR(1000),
  year INT NULL,
  genre VARCHAR(1000)
);

\ copy books
FROM
  '/tmp/books.csv' DELIMITER ',' CSV HEADER;
