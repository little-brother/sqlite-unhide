PRAGMA page_size=4096;
PRAGMA page_size;
PRAGMA encoding="UTF-8";
PRAGMA encoding;
PRAGMA secure_delete=1;
PRAGMA secure_delete;

CREATE TABLE users (
	'id' INT UNSIGNED NOT NULL,
	'name' TEXT NOT NULL,
	'surname' TEXT NULL,
	'codeA' FLOAT NULL,
	'codeB' FLOAT NULL
);

INSERT INTO users 
	(id, name, surname, codeA, codeB)
	VALUES
	(20001, 'Eric', 'Peters', 1648585296.53800, 179014622.78283),
	(20002, 'Nicole', 'Fuchs', 952246597.01448, -4982353751.53942),
	(20003, 'Jakob', 'Sommer', 2604638909.73695, 4003792008.85249),
	(20004, 'Maja', 'Schroder', -2269355173.81381, -3891489058.21680),
	(20005, 'Martin', 'Schmitt', -1301688368.57271, 282113875.85947),
	(20006, 'Sophie', 'Beck', -130525764.60434, 2055417409.65816),
	(20007, 'Elsa', 'Walter', 156111416.94529, -952039591.94573),
	(20008, 'Andreas', 'Franke', 2054127411.47640, -2279814582.91403),
	(20009, 'Nele', 'Kohler', 2899200039.86880, 330884175.06352),
	(20010, 'Leonie', 'Konig', 348530428.18072, 4368401104.29022);

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 20004;
DELETE FROM users where id == 20007;
DELETE FROM users where id == 20008;
DELETE FROM users where id == 20003;
DELETE FROM users where id == 20001;
DELETE FROM users where id == 20006;
DELETE FROM users where id == 20002;
DELETE FROM users where id == 20005;
DELETE FROM users where id == 20009;
DELETE FROM users where id == 20010;
