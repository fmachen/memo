---
CREATE INDEX tbl_idx ON tbl (date_column);
SELECT text, date_column
FROM tbl
WHERE TO_CHAR(date_column, 'YYYY') = '2013';

WHERE TO_CHAR(date_column, 'YYYY') = '2013' => 118.796ms
WHERE date_column BETWEEN '2013-01-01' AND '2013-12-31' => 0.430ms

---
CREATE INDEX tbl_idx ON tbl (a, date_column);
SELECT id, a, date_column
FROM tbl
WHERE a = ?
ORDER BY date_column DESC
LIMIT 1

As fast as primary key, but avoid row lookup is better

---
CREATE INDEX tbl_idx ON tbl (a, b);
SELECT id, a, b
FROM tbl
WHERE a = ? AND b = ?
SELECT id, a, b
FROM tbl
WHERE b = ?

Second query can't use index so 1 => 0.055ms, 2 => 29.849
Change the index to (b, a) and 1 => 0.056ms, 2 => 6.932

---
CREATE INDEX tbl_idx ON tbl (text varchar_pattern_ops);
SELECT id, text
FROM tbl
WHERE text LIKE '%TERM%'

B-Tree indexes don't support prefix wildcards => 23.494ms

---
CREATE INDEX tbl_idx ON tbl (date_col, state);
SELECT id, date_col, state
FROM tbl
WHERE date_col >= TO_DATE('2008-11-07')
AND state = 'X'

=> 0.893ms
Change the index to (state, date_col) => 0.530ms
