CREATE STREAM art (id int, title varchar(16))
    FROM FILE 'art.csv' LINE DELIMITED
    CSV (fields := ',');

CREATE STREAM vt (u int, id int)
    FROM FILE 'vt.csv' LINE DELIMITED
    CSV (fields := ',');

SELECT vt.id AS id, art.title AS title, COUNT(*) AS votes
    FROM art JOIN vt ON art.id = vt.id
    GROUP BY vt.id, art.title;
