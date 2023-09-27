///soal 1
- CREATE DATABASE book_store;
- CREATE TABLE books 
  (id_buku INT NOT NULL AUTO_INCREMENT , judul_buku VARCHAR(50) NULL , pengarang VARCHAR(30) NULL , tahun_terbit INT NULL , penerbit VARCHAR NULL , tanggal_dibuat DATE NULL DEFAULT NULL , tanggal_diupdate DATE NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY id_buku);
- CREATE TABLE category 
  (id_category INT NOT NULL AUTO_INCREMENT , nama_category VARCHAR(30) NULL , tanggal_dibuat DATE NULL , tanggal_diubah DATE NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY id_category);

///soal 2
- INSERT INTO category (nama_category, tanggal_dibuat) VALUES
  ('Pemrograman', '2023-09-25'), 
  ('Fiksi', '2023-09-25'),
  ('Nonfiksi', '2023-09-25'),
  ('Bisnis', '2023-09-25'),
  ('Teknologi', '2023-09-25'),
  ('Seni', '2023-09-25'),
  ('sejarah', '2023-09-25'),
  ('Sains', '2023-09-25'),
  ('Hukum', '2023-09-25'),
  ('Kesehatan', '2023-09-25');

- INSERT INTO books (judul_buku, pengarang, tahun_terbit, penerbit, tanggal_dibuat) VALUES 
  ('Building Microservice', 'Sam Newman', '2014', 'OReilly Media', '2023-09-25'),
  ('Clean Code', 'Robert C. Martin', '2008', 'Prentice', '2023-09-25'),
  ('The Pragmatic Programmer', 'Andrew Hunt', '1999', 'Addison-Wesley', '2023-09-25'),
  ('Design Patterns', 'Erich Gamma', '1994', 'Addison-Wesley', '2023-09-25'),
  ('Introduction to Algorithms', 'Thomas H. Cormen', '1990', 'MIT Press', '2023-09-25'),
  ('The Art of Computer Prog.', 'Donld E. Knuth', '1968', 'Addison-Wesley', '2023-09-25'),
  ('Clean Architecture', 'Robert C. Martin', '2017', 'Prentice Hall', '2023-09-25'),
  ('Refactoring', 'Martin Fowler', '1999', 'Addison-Wesley', '2023-09-25'),
  ('Domain-Driven Design', 'Eric Evans', '2003', 'Addison-Wesley', '2023-09-25'),
  ('The Mythical Man-Month', 'Frederick Brooks', '1975', 'Addison-Wesley', '2023-09-25');
  ('tutorial turu','aku dewe','2023','robot mall','2023-09-25');

///soal 3
- SELECT * FROM books;
- SELECT * FROM category;

///soal 4
- UPDATE books SET judul_buku = 'Building Microservice: Designing Fine-Grained System 1st', `tahun_terbit` = '2015' WHERE `books`.`id_buku` = 1;

///soal 5
- DELETE FROM books WHERE id_buku = 10;
- DELETE FROM category WHERE id_category = 10;

///soal 6
- SELECT * FROM books WHERE penerbit = 'Addison-Wesley';
- SELECT * FROM books WHERE tahun_terbit BETWEEN 2003 AND 2023;
- SELECT * FROM books WHERE judul_buku LIKE '%design%';

///soal 7
- CREATE TABLE book_categories (id INT NOT NULL AUTO_INCREMENT , id_category INT NULL , id_book INT NULL , tanggal_dibuat DATE NULL , Tanggal_diubah DATE NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY id);

///soal 8
  INSERT INTO book_categories (id_category, id_book, tanggal_dibuat) VALUES 
  ('1', '2', '2023-09-25'),
  ('5', '3', '2023-09-25'),
  ('1', '1', '2023-09-25');

///soal 9
- SELECT id, judul_buku, nama_category FROM book_categories LEFT JOIN books USING(id_book) LEFT JOIN category USING (id_category);

//soal 10
- ALTER TABLE books ADD jumlah_halaman INT;