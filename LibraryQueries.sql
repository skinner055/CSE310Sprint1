USE mylibrary;

-- 1. View all books
SELECT * FROM book;

-- 2. Books with their authors
SELECT b.title, a.name AS author
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- 3. Books with their genres
SELECT b.title, g.name AS genre
FROM book b
JOIN book_genre bg ON b.book_id = bg.book_id
JOIN genre g ON bg.genre_id = g.genre_id;

-- 4. Books with BOTH author and genre
SELECT b.title, a.name AS author, g.name AS genre
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
JOIN book_genre bg ON b.book_id = bg.book_id
JOIN genre g ON bg.genre_id = g.genre_id;

-- 5. Find all Fantasy books
SELECT b.title
FROM book b
JOIN book_genre bg ON b.book_id = bg.book_id
JOIN genre g ON bg.genre_id = g.genre_id
WHERE g.name = 'Fantasy';

-- 6. Count how many books each author has
SELECT a.name, COUNT(ba.book_id) AS total_books
FROM author a
LEFT JOIN book_author ba ON a.author_id = ba.author_id
GROUP BY a.author_id;

-- 7. Books with more than one genre
SELECT b.title, COUNT(bg.genre_id) AS genre_count
FROM book b
JOIN book_genre bg ON b.book_id = bg.book_id
GROUP BY b.book_id
HAVING COUNT(bg.genre_id) > 1;