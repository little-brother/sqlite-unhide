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

INSERT INTO users 
	(id, name, surname)
	VALUES
	(20001, 'Nele', 'Berger'),
	(20002, 'Lukas', 'Wolff'),
	(20003, 'Dennis', 'Sommer'),
	(20004, 'Meike', 'Bergmann'),
	(20005, 'Anja', 'Roth'),
	(20006, 'Josephine', 'Brandt'),
	(20007, 'Silvia', 'Horn'),
	(20008, 'Meike', 'Winkler'),
	(20009, 'Lara', 'Hoffmann'),
	(20010, 'Emilia', 'Ludwig'),
	(20011, 'Claudia', 'Franke'),
	(20012, 'Emelie', 'Walter'),
	(20013, 'Christoph', 'Hahn'),
	(20014, 'Simone', 'Hartmann'),
	(20015, 'Heinrich', 'Schmitz'),
	(20016, 'Jonas', 'Brandt'),
	(20017, 'Nele', 'Baumann'),
	(20018, 'Anton', 'Weber'),
	(20019, 'Simon', 'Schulze'),
	(20020, 'Yvonne', 'Weib');

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 20002;
DELETE FROM users where id == 20020;
DELETE FROM users where id == 20017;
DELETE FROM users where id == 20005;
DELETE FROM users where id == 20003;
DELETE FROM users where id == 20008;
DELETE FROM users where id == 20007;
