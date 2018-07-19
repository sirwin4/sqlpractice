SELECT Label FROM Genre

INSERT into Artist
values (null, "Modest Mouse", 1993)

INSERT into Album
SELECT null, "The Moon and Antarctica", 2000, 3900, "Sony Music", s.artistid, Genre.genreId
FROM Artist s, Genre
WHERE s.artistname = "Modest Mouse"
AND Genre.label = "Rock"

INSERT into Song
SELECT null, "Tiny Cities Made of Ashes", 118, "1993", g.genreid, a.artistid, al.albumid
FROM Genre g, Artist a, ALbum al
WHERE g.label = "Rock"
AND a.artistname = "Modest Mouse"
AND al.title = "The Moon and Antarctica"

INSERT into Song
SELECT null, "I Came As a Rat", 123, "1993", g.genreid, a.artistid, al.albumid
FROM Genre g, Artist a, ALbum al
WHERE g.label = "Rock"
AND a.artistname = "Modest Mouse"
AND al.title = "The Moon and Antarctica"

SELECT a.Title, s.Title 
FROM Album a
LEFT JOIN Song s on s.AlbumId = a.AlbumId
WHERE a.title = "The Moon and Antarctica"

SELECT count() as "Song Count", al.title
FROM Album al
JOIN Song ON al.albumid = Song.albumid
group by al.albumid


SELECT max(Album.AlbumLength) as "longest album", Album.Title
FROM Album
