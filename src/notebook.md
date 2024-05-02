# Introduction to SQL

## Relational Databases

### Our very own table

A database has been set up for this course and the `books` table is
available here.

Run the code to explore what data `books` holds!

**Instructions**

- Hit "Run Code" to see the `books` table.

**Answer**

```{python}
%%sql
SELECT *
FROM books;
```

## Querying

### Querying the books table

You're ready to practice writing your first SQL queries using the
`SELECT` and `FROM` keywords. Recall from the video that `SELECT` is
used to choose the fields that will be included in the result set, while
`FROM` is used to pick the table in which the fields are listed.

Feel free to explore `books` in the exercise.

Your task in this exercise is to practice selecting fields from `books`.

**Instructions**

- Use SQL to return a result set of all book titles included in the
  `books` table.

<!-- -->

- Select both the `title` and `author` fields from `books`.

<!-- -->

- Select all fields from the `books` table.

**Answer**

```{python}
%%sql
-- Return all titles from the books table
SELECT title
FROM books;

-- Select title and author from the books table
SELECT title, author
FROM books;

-- Select all fields from the books table
SELECT *
FROM books;
```

### Making queries DISTINCT

You've learned that the `DISTINCT` keyword can be used to return unique
values in a field. In this exercise, you'll use this understanding to
find out more about the `books` table!

There are 350 books in the `books` table, representing all of the books
that our local library has available for checkout. But how many
different authors are represented in these 350 books? The answer is
surely less than 350. For example, J.K. Rowling wrote all seven Harry
Potter books, so if our library has all Harry Potter books, seven books
will be written by J.K Rowling. There are likely many more repeat
authors!

**Instructions**

- Write SQL code that returns a result set with just one column listing
  the unique authors in the `books` table.

<!-- -->

- Update the code to return the unique `author` and `genre` combinations
  in the `books` table.

**Answer**

```{python}
%%sql
-- Select unique authors from the books table
SELECT DISTINCT author
FROM books;

-- Select unique authors and genre combinations from the books table
SELECT DISTINCT author, genre
FROM books;
```

### Aliasing

While the default column names in a SQL result set come from the fields
they are created from, you've learned that aliasing can be used to
rename these result set columns. This can be helpful for clarifying the
intent or contents of the column.

Your task in this exercise is to incorporate an alias into one of the
SQL queries that you worked with in the previous exercise!

**Instructions**

- Add an alias to the SQL query to rename the `author` column to
  `unique_author` in the result set.

**Answer**

```{python}
%%sql
-- Alias author so that it becomes unique_author
SELECT DISTINCT author AS unique_author
FROM books;
```

### VIEWing your query

You've worked hard to create the below SQL query:

    SELECT DISTINCT author AS unique_author
    FROM books;

What if you'd like to be able to refer to it later, or allow others to
access and use the results? The best way to do this is by creating a
view. Recall that a view is a virtual table: it's very similar to a real
table, but rather than the data itself being stored, the query code is
stored for later use.

**Instructions**

- Add a single line of code that saves the results of the written query
  as a view called `library_authors`.

**Answer**

```{python}
%%sql
-- Save the results of this query as a view called library_authors
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT *
FROM library_authors;
```

### Limiting results

Let's take a look at a few of the genres represented in our library's
books.

Recall that limiting results is useful when testing code since result
sets can have thousands of results! Queries are often written with a
`LIMIT` of just a few records to test out code before selecting
thousands of results from the database.

Let's practice with `LIMIT`!

**Instructions**

- Using PostgreSQL, select the `genre` field from the `books` table;
  limit the number of results to 10.

**Answer**

```{python}
%%sql
-- Select the first 10 genres from books using PostgreSQL
SELECT genre
FROM books
LIMIT 10;
```
