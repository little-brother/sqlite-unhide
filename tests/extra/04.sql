-- The first column is FLOAT (8 bytes)

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE discounts (
	value real primary key, 
	"desc" text, 
	comment text, 
	qty integer
);

insert into discounts (value, "desc", comment, qty) values 
	(123.1, 'Base discount', 'simple value', 1),
	(123456789.1234, 'Max discount', 'Max value', 11),
	(11.11, 'Float value', 'Another one value', NULL),
	(999999999.99992, 'Another big one discount', NULL, 321),
	(123, 'Integer value', NULL, 123), /* unrecoverable, because 123 is stored as integer */	 
	(987654321111.000061024, 'Test value', 987654321.111000111, NULL);
	
delete from discounts where value in (123456789.1234, 11.11, 999999999.99992, 123);	