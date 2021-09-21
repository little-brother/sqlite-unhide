-- Detect generalized types by data if table doesn't have them in DDL

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

create table t (
	id integer primary key,
	name,
	price,
	qty integer
);

insert into t (name, price, qty) values
	('Fork', NULL, 2),
	('Kettle', 5.3, 12),
	('Bowl', 11.23, NULL),
	('Cup', 17.5, 67);

delete from t where id in (2, 3);