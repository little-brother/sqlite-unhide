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
	(50001, 'Nico', 'Krämer', -938795821.71272, 4547532326.33114),
	(50002, 'Theo', 'Pfeiffer', 2800924613.97914, 2414083041.90919),
	(50003, 'Mathilda', 'Baumann', -3968808007.87770, -2855672295.13809),
	(50004, 'Melanie', 'Schulte', -3965271883.16233, 4728366359.94183),
	(50005, 'Werner', 'Hartmann', -905050726.56323, -771378756.39432),
	(50006, 'Stefan', 'Möller', 2888096122.95036, 2666002496.92146),
	(50007, 'Marie', 'Meyer', 95767725.76932, 186309397.77303),
	(50008, 'Hertha', 'Pfeiffer', 3023377255.54750, -3710988261.13669),
	(50009, 'Yvonne', 'Groß', -4163455939.46216, 4206082466.62006),
	(50010, 'Philipp', 'Vogel', 1620165503.87264, -79188065.17459);

INSERT INTO members 
	(mid, mname, msurname, mcodeA, mcodeB)
	VALUES
	(20001, 'Sophie', 'Schulz', 2065139639.68732, 1025910338.39896),
	(20002, 'Lea', 'Schwarz', 754276693.68418, -15140573.96685),
	(20003, 'Anja', 'Ziegler', 4213480674.29544, 4554364769.51203),
	(20004, 'Lennart', 'Scholz', 2220367266.43349, -3228886908.95815),
	(20005, 'Felix', 'Hahn', 1957422493.47149, 1138044584.60679),
	(20006, 'Richard', 'Ludwig', 2427056323.47011, 3263528243.76129),
	(20007, 'Melanie', 'Simon', 2469610705.72474, 235864867.10043),
	(20008, 'Matthias', 'Kraus', -4843323198.07416, 862051451.51450),
	(20009, 'Elias', 'Schreiber', -3112038214.74316, 1961299892.03126),
	(20010, 'Leni', 'Schulz', -3053840686.59220, 835614756.60448);

INSERT INTO users 
	(id, name, surname, codeA, codeB)
	VALUES
	(50011, 'Moritz', 'Busch', 389979526.11650, -2138123082.52702),
	(50012, 'Raphael', 'Herrmann', -367009986.82855, -4226409890.32872),
	(50013, 'Katja', 'Frank', 1911634694.27807, -1752454562.46308),
	(50014, 'Marlon', 'Kuhn', -3488926323.35840, -1363406584.76735),
	(50015, 'Finja', 'Wagner', 3872458282.33308, 4503360464.93769),
	(50016, 'Greta', 'Walter', 365411911.79557, -188405721.07043),
	(50017, 'Marc', 'Schreiber', -3227105833.69579, -3427364280.64637),
	(50018, 'Katja', 'Köhler', 2408250475.95811, -2612923373.28797),
	(50019, 'Käthe', 'Hoffmann', 248953544.18501, -1860089756.94892),
	(50020, 'Leo', 'Ziegler', -1086499647.27764, -4664941439.24906);

INSERT INTO members 
	(mid, mname, msurname, mcodeA, mcodeB)
	VALUES
	(20011, 'Daniela', 'Böhm', -1417396001.71214, 3043568301.03489),
	(20012, 'Lars', 'Maier', -3319838288.38907, 2766117466.50474),
	(20013, 'Jens', 'Becker', 2269477926.78581, 2144822635.28967),
	(20014, 'Torsten', 'Herrmann', -3043583090.43738, 832706599.41840),
	(20015, 'Willi', 'Köhler', 2405342318.77203, -216124288.37275),
	(20016, 'Minna', 'Lorenz', 2170952338.33927, -2672941972.34928),
	(20017, 'Nele', 'Hartmann', 466968275.35842, -1979600422.54049),
	(20018, 'Eric', 'Werner', -1644541861.78955, -1225794505.43308),
	(20019, 'Alfred', 'Schmitz', -3182226209.05481, 369429735.17321),
	(20020, 'Else', 'Keller', -1864452802.97867, 1106101859.41034);

PRAGMA secure_delete=0;
PRAGMA secure_delete;

DELETE FROM users where id == 50009;
DELETE FROM users where id == 50014;
DELETE FROM members where mid == 20008;
DELETE FROM members where mid == 20005;
DELETE FROM users where id == 50007;
DELETE FROM users where id == 50013;
DELETE FROM members where mid == 20004;
DELETE FROM members where mid == 20017;
DELETE FROM users where id == 50003;
DELETE FROM members where mid == 20018;
