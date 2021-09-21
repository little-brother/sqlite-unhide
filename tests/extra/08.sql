-- Trunk freelist

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE books (
	id integer primary key autoincrement, 
	title text not null, 
	author text nut null, 
	isbn text, price real, 
	available integer check (available >= 0)
);

insert into books (id, title, author, isbn, price, available) values 
	(1, 'Steelheart', 'Brandon Sanderson', '978-0385743563', 5.0, 3),
	(2, 'All Our Yesterdays', 'Cristin Terrill', '978-1423176374', 7.3, 10),
	(3, 'Life After Life', 'Jill McCorkle', '978-1616203221', 2.82, 4),
	(4, 'Life After Life', 'Kate Atkinson', '978-0316176491', 8.1, 5),
	(5, 'Foundation', 'Isaac Asimov', '978-0553293357', 12.7, 8),
	(6, 'Dracula', 'Bram Stoker', '978-0486411095', 6.6, 0),
	(7, 'Ordinary Grace', 'William Kent Krueger', '978-1451645859', 3.2, 9),
	(8, 'The Nightingale', 'Kristin Hannah', '978-0312577223', 11.0, 1),
	(9, 'The Life We Bury', 'Allen Eskens', '978-1616149987', 5.1, 4);

drop table books;