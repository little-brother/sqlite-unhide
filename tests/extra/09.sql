-- UTF8

PRAGMA page_size = 4096;
PRAGMA encoding = "UTF-8";
PRAGMA secure_delete = 0;

CREATE TABLE lyrics (
	id integer primary key autoincrement, 
	song_id text not null, 
	line text,
	line_no int
);

insert into lyrics (id, song_id, line, line_no) values 
	(5001, 65001, 'Наш Советский Союз покарает', 10),
	(5002, 65001, 'Весь мир, от Европы к Неве, на восток', 11),
	(5003, 65001, 'Над землёй везде будут петь:', 12),
	(5014, 65001, 'Столица, водка, советский медведь наш!', 13),
	(5019, 65001, '(music)', 14);	
	
delete from lyrics where id in (5002, 5014);

