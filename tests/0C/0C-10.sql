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

CREATE TABLE members (
	'mid' INT UNSIGNED NOT NULL,
	'mname' TEXT NOT NULL,
	'msurname' TEXT NULL,
	'mcodeA' FLOAT NULL,
	'mcodeB' FLOAT NULL
);

INSERT INTO users 
	(id, name, surname, codeA, codeB)
	VALUES
	(50001, 'Berta', 'Engel', -4811195414.42543, 252138541.66313),
	(50002, 'Anja', 'Hoffmann', 4412197651.99916, -3095201425.29868),
	(50003, 'Annika', 'Kaiser', 3099127047.74138, -2935678804.26332),
	(50004, 'Sebastian', 'Klein', -3507961718.60209, -4501686715.28887),
	(50005, 'Stefanie', 'Wagner', -4207398588.40005, -4743079859.64375),
	(50006, 'Ernst', 'Hofmann', 1655657839.33534, -920109700.37436),
	(50007, 'Moritz', 'Berger', 2784880198.43813, 1908973314.29132),
	(50008, 'Dirk', 'Martin', 194571211.55903, -2434495830.64508),
	(50009, 'Marlon', 'Meier', 2817642711.01805, 2016484223.77952),
	(50010, 'Paula', 'Schreiber', 3921282803.13745, 3828334407.33530);

INSERT INTO members 
	(mid, mname, msurname, mcodeA, mcodeB)
	VALUES
	(20001, 'Anni', 'Schneider', -4107344401.58463, 4266376020.04519),
	(20002, 'Anna', 'Hahn', 4764689309.41294, 4624428534.70539),
	(20003, 'Clara', 'Becker', 4881348675.06165, -1200275060.81400),
	(20004, 'Helene', 'Schäfer', 2879615238.81164, -4062728909.33916),
	(20005, 'Mia', 'Müller', 2846244404.95216, 3803140948.90055),
	(20006, 'August', 'Huber', -3631354886.40114, 2393700777.27069),
	(20007, 'Rudolf', 'Weber', -589815003.60641, 1560998785.57073),
	(20008, 'Marie', 'Kaiser', 389333188.24942, 2033748015.31143),
	(20009, 'Andre', 'Richter', 1300124030.70001, -4104104707.53168),
	(20010, 'Sebastian', 'Pfeiffer', -4479676177.48290, -4979541380.88019);

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 50010;
DELETE FROM users where id == 50004;
DELETE FROM users where id == 50009;
DELETE FROM users where id == 50001;
DELETE FROM members where mid == 20007;
DELETE FROM members where mid == 20005;
DELETE FROM members where mid == 20001;
DELETE FROM members where mid == 20008;
DELETE FROM members where mid == 20003;
DELETE FROM users where id == 50007;
DELETE FROM users where id == 50005;
DELETE FROM users where id == 50008;
DELETE FROM users where id == 50003;
DELETE FROM users where id == 50006;
DELETE FROM users where id == 50002;
DELETE FROM members where mid == 20002;
DELETE FROM members where mid == 20006;
DELETE FROM members where mid == 20004;
DELETE FROM members where mid == 20010;
DELETE FROM members where mid == 20009;
