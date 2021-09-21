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
	'codeA' INT UNSIGNED NULL,
	'codeB' INT NULL
);

CREATE TABLE members (
	'mid' INT UNSIGNED NOT NULL,
	'mname' TEXT NOT NULL,
	'msurname' TEXT NULL,
	'mcodeA' INT UNSIGNED NULL,
	'mcodeB' INT NULL
);

INSERT INTO users 
	(id, name, surname, codeA, codeB)
	VALUES
	(50001, 'Lina', 'Kühn', 2903011202, 105841301),
	(50002, 'Hans', 'Müller', 3548684134, 1300965829),
	(50003, 'Jan', 'Jäger', 661493766, -820579705),
	(50004, 'Clara', 'Wolff', 2268503768, 570753184),
	(50005, 'Gustav', 'Schäfer', 1807260148, -613448384),
	(50006, 'Alfred', 'Lorenz', 635069800, 1354802678),
	(50007, 'Robert', 'Krause', 2794881854, 370627753),
	(50008, 'Lea', 'Sommer', 3868811350, -403700415),
	(50009, 'Adrian', 'Schubert', 3679030046, -220015919),
	(50010, 'Moritz', 'Hofmann', 1000760190, -962075510);

INSERT INTO members 
	(mid, mname, msurname, mcodeA, mcodeB)
	VALUES
	(20001, 'Jessica', 'Otto', 1637666936, 493471598),
	(20002, 'Mats', 'Thomas', 377443210, 283251194),
	(20003, 'Georg', 'Schmid', 461121898, 1671806757),
	(20004, 'Josef', 'Lehmann', 22883688, -1032794858),
	(20005, 'Leon', 'Keller', 2443859320, -212107711),
	(20006, 'Raphael', 'Frank', 3383989456, -812046130),
	(20007, 'Laura', 'Lange', 114581982, 1288455741),
	(20008, 'Marco', 'Neumann', 649230236, 671800235),
	(20009, 'Sabine', 'Arnold', 268787810, -22557016),
	(20010, 'Erich', 'Krämer', 1880227642, -1084383144);

INSERT INTO users 
	(id, name, surname, codeA, codeB)
	VALUES
	(50011, 'Finn', 'Schumacher', 386109874, 1391356532),
	(50012, 'Luca', 'Schäfer', 1465251768, -729839515),
	(50013, 'Nils', 'Wagner', 802064166, 21468263),
	(50014, 'Käthe', 'Kuhn', 1595237720, 1051177379),
	(50015, 'Niklas', 'Lorenz', 690916338, 863997609),
	(50016, 'Christine', 'Berger', 3571545464, 543818742),
	(50017, 'Linus', 'Simon', 395793478, 10996915),
	(50018, 'Franz', 'Heinrich', 1371931094, -32072292),
	(50019, 'Andre', 'Krämer', 2276498702, 48300072),
	(50020, 'Hans', 'Scholz', 2723316928, 750429795);

INSERT INTO members 
	(mid, mname, msurname, mcodeA, mcodeB)
	VALUES
	(20011, 'Nils', 'Lange', 3558295120, 1365447573),
	(20012, 'Finn', 'Berger', 1614735672, -1145207750),
	(20013, 'Matteo', 'Schmid', 1947851784, 949467952),
	(20014, 'Charlotte', 'Becker', 2533229096, -516674002),
	(20015, 'Emmi', 'Lehmann', 303563782, 126299737),
	(20016, 'Frank', 'Bergmann', 1740186344, 282999435),
	(20017, 'Moritz', 'Schmitt', 1052144532, -106935011),
	(20018, 'Leonie', 'Stein', 2989742788, -20870081),
	(20019, 'Hans', 'Pohl', 2603494954, 835696010),
	(20020, 'Tim', 'Wagner', 1898918442, 444445851);

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 50014;
DELETE FROM users where id == 50011;
DELETE FROM members where mid == 20001;
DELETE FROM members where mid == 20005;
DELETE FROM users where id == 50009;
DELETE FROM users where id == 50020;
DELETE FROM members where mid == 20007;
DELETE FROM members where mid == 20017;
DELETE FROM users where id == 50003;
DELETE FROM members where mid == 20012;
