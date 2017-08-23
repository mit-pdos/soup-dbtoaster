CREATE TABLE art (id int, title varchar(16))
    FROM FILE 'art.csv' LINE DELIMITED
    CSV (fields := ',');

CREATE TABLE vt (u int, id int)
    FROM FILE 'vt.csv' LINE DELIMITED
    CSV (fields := ',');

SELECT art.id AS id, art.title AS title, COUNT(*) AS votes
    FROM art JOIN vt ON art.id = vt.id
    GROUP BY art.id, art.title;
