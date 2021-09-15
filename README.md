**unhide** is a console tool to recovery deleted rows from SQLite3 databases.<br>
This is a proof-of-concept for [this article](https://habr.com/ru/post/575090/) (russian). Some techniques are not implemented.<br>

|[**Download the latest version**](https://github.com/little-brother/sqlite-unhide/releases/latest)|
|-------------------------------------------------------------------------------------------|


FREEWARE. HOME USE ONLY.

### Usage
```
unhide <dbpath> <any for debug>
unhide D:/data/db.sqlite
unhide "D:/data/my db.sqlite" d
```

### Limitations
* The `sqlite_master` table have to be one single leaf
* Maximum a database size is 1Mb
* Overflow values, non ascii text, BLOBs are not supported

### Similar software
* [undark](http://pldaniels.com/undark/)
* [bring2lite](https://github.com/bring2lite/bring2lite)
* [FQLite](https://www.staff.hs-mittweida.de/~pawlaszc/fqlite/)
* [SysTools SQLite Viewer](https://www.systoolsgroup.com/sqlite-viewer.html)
* [Forensic Browser for SQLite](https://sqliteforensictoolkit.com/sqlite-forensic-toolkit/forensic-browser-for-sqlite/) 
* and [others](https://www.google.com/search?client=firefox-b-d&q=sqlite+forensics+softwares)
