PRAGMA page_size=4096;
PRAGMA page_size;
PRAGMA encoding="UTF-8";
PRAGMA encoding;
PRAGMA secure_delete=1;
PRAGMA secure_delete;

CREATE TABLE users (
	'id' INT UNSIGNED NOT NULL,
	'name' TEXT NOT NULL,
	'surname' TEXT NULL
);

CREATE TABLE members (
	'mid' INT UNSIGNED NOT NULL,
	'mname' TEXT NOT NULL,
	'msurname' TEXT NULL
);

INSERT INTO users 
	(id, name, surname)
	VALUES
	(50001, 'Gustav', 'Klein'),
	(50002, 'Sebastian', 'Maier'),
	(50003, 'Melanie', 'Bauer'),
	(50004, 'Manuela', 'Schneider'),
	(50005, 'Felix', 'Kaiser'),
	(50006, 'Annika', 'Ludwig'),
	(50007, 'Rudolf', 'Schumacher'),
	(50008, 'Adrian', 'Stein'),
	(50009, 'Paula', 'Fuchs'),
	(50010, 'Jessica', 'Günther');

INSERT INTO members 
	(mid, mname, msurname)
	VALUES
	(20001, 'Johannes', 'Neumann'),
	(20002, 'Kai', 'Krämer'),
	(20003, 'Sandra', 'Heinrich'),
	(20004, 'Simon', 'Schröder'),
	(20005, 'Marlene', 'Albrecht'),
	(20006, 'Silke', 'Winter'),
	(20007, 'Herbert', 'Schröder'),
	(20008, 'Julius', 'Berger'),
	(20009, 'Nadine', 'Bergmann'),
	(20010, 'Nico', 'Arnold');

INSERT INTO users 
	(id, name, surname)
	VALUES
	(50011, 'Jessica', 'Sommer'),
	(50012, 'Lara', 'Heinrich'),
	(50013, 'Manuela', 'Martin'),
	(50014, 'Berta', 'Kuhn'),
	(50015, 'Max', 'Maier'),
	(50016, 'Marlene', 'Busch'),
	(50017, 'Ben', 'Busch'),
	(50018, 'Lars', 'Werner'),
	(50019, 'Irma', 'Krämer'),
	(50020, 'Martina', 'Bauer');

INSERT INTO members 
	(mid, mname, msurname)
	VALUES
	(20011, 'Jannik', 'Meier'),
	(20012, 'Wilhelm', 'Schulte'),
	(20013, 'Florian', 'Kühn'),
	(20014, 'Philipp', 'Bauer'),
	(20015, 'Lea', 'Otto'),
	(20016, 'Andre', 'Werner'),
	(20017, 'Johann', 'Meyer'),
	(20018, 'Elisabeth', 'Baumann'),
	(20019, 'Anne', 'Hoffmann'),
	(20020, 'Karl', 'Schulte');

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 50013;
DELETE FROM users where id == 50012;
DELETE FROM members where mid == 20010;
DELETE FROM members where mid == 20011;
DELETE FROM users where id == 50001;
DELETE FROM users where id == 50018;
DELETE FROM members where mid == 20001;
DELETE FROM members where mid == 20014;
DELETE FROM users where id == 50003;
DELETE FROM members where mid == 20012;
