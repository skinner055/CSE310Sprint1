USE mylibrary;

-- Authors
INSERT INTO author (name) VALUES
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien'),
('Agatha Christie');

-- Books
INSERT INTO book (title, published_year) VALUES
('Harry Potter and the Sorcerer''s Stone', 1997),
('1984', 1949),
('The Hobbit', 1937),
('Murder on the Orient Express', 1934);

-- Genres
INSERT INTO genre (name) VALUES
('Fantasy'),
('Dystopian'),
('Mystery'),
('Adventure');

-- Book ↔ Author relationships
INSERT INTO book_author (book_id, author_id) VALUES
(1,1), -- Harry Potter → Rowling
(2,2), -- 1984 → Orwell
(3,3), -- Hobbit → Tolkien
(4,4); -- Murder → Christie

-- Book ↔ Genre relationships
INSERT INTO book_genre (book_id, genre_id) VALUES
(1,1), -- Fantasy
(2,2), -- Dystopian
(3,1), -- Fantasy
(3,4), -- Adventure
(4,3); -- Mystery