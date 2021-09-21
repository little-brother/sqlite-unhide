-- The first column is TEXT

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE goods (
	name text primary key, 
	price real, 
	quantity integer, 
	comment text
);

insert into goods (name, price, quantity, comment) values 
	('Kettle', 10.23, 4, 'Goot kettle! My recommendations!!'),
	('Fork', 1.1, 20000, NULL),
	('Golden Spoon', 2.0, 12, NULL),
	('Simple spoon', 1.0, 11, NULL),
	('Silver fork', 3.01, 123, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. '),
	('Mi Kettle', 11.123, 12, 'Another one'),
	('Boul', 22.0, 65, NULL);
	
delete from goods where name in ('Simple spoon', 'Mi Kettle');	