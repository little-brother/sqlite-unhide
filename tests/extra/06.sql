-- The first column is INTEGER but non-PRIMARY KEY (1-8 bytes)

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE employees (
	id integer not null unique, 
	boss_id integer, 
	name text, 
	salary real, 
	"desc" text
);

insert into employees (id, boss_id, name, salary, "desc") values 
	(1, 2, 'Abba', 0.123, 'Test'),
	(2, 12, 'Gordon Moore', 0.99, NULL),
	(256, 32000, 'John', 1234567890.123, 'Biggy'),
	(32000000000, 111000000000, 'Laaar', 111111.0, NULL),
	(56, 333, 'Maria', 333.333, 'Exists');
	
delete from employees where id in (256, 32000000000);	