-- authors
INSERT INTO authors (author_name)
VALUES
    ('Lewis Carroll'),
    ('Agatha Christie');

-- genres
INSERT INTO genres (genre_name)
VALUES
    ('Mystery'),
    ('Adventure');

-- books
ALTER TABLE books 
MODIFY publication_year SMALLINT;

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES
    ('Murder on the Orient Express', 1934, 2, 1),
    ('Alice in Wonderland', 1865, 1, 2);

-- users
INSERT INTO users (username, email)
VALUES
    ('John Doe', 'JD@example.com'),
    ('Bill Gates', 'bill@example.com');

-- borrowed_books
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
    (9, 1, '2024-04-01', '2024-04-15'),
    (11, 2, '2024-04-05', NULL);
