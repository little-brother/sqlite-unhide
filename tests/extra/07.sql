-- Text with 2 byte length type

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE goods (
	id integer primary key,
	name text, 
	price real, 
	quantity integer,
	comment text
);

insert into goods (id, name, price, quantity, comment) values 
	(1, 'Kettle', 10.23, 4, 'Goot kettle!'),
	(2, 'Fork', 1.1, 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
	(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 11.123, 12, 'Short comment'),
	(65000, 'Golden Spoon', 2.0, 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
	(3200000, 'Simple spoon', 1.0, 11, NULL);
	
delete from goods where id in (2, 5);

