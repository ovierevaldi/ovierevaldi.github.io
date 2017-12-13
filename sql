MAX 
SELECT *
FROM tblnasabah
WHERE (((tblnasabah.[jumlahsaldo])=(select max(jumlahsaldo) from tblnasabah)));

MIN
SELECT *
FROM tblnasabah
WHERE (((tblnasabah.[jumlahsaldo])=(select min(jumlahsaldo) from tblnasabah)));

SUm
SELECT sum(jumlahsaldo)
FROM tblnasabah;

AVG
SELECT avg(jumlahsaldo)
FROM tblnasabah;

GROUP BY

SELECT tempatlahir,norekening,namadepan
FROM tblnasabah
GROUP BY tempatlahir,norekening,namadepan

HAVING GROUP BY

SELECT tempatlahir,norekening,namadepan
FROM tblnasabah
GROUP BY tempatlahir,norekening,namadepan
HAVING tempatlahir like "Bekasi"

ORDER BY
SELECT *
FROM tblpemasukan
ORDER BY norekening DESC;


DISTINCT
SELECT DISTINCT norekening
FROM tblpemasukan;


COUNT
select count(idtransaksi) as jumlahtransaksi 
from tblpemasukan

INNER JOIN
SELECT tblnasabah.norekening, namadepan , tipeatm.tipeatm
FROM tipeatm INNER JOIN tblnasabah ON tipeatm.idatm = tblnasabah.tipeatm
WHERE tipeatm.idatm = 1;

UNION MINUS ALL

SELECT norekening from tblnasabah
UNION ALL
Select norekening from tblpemasukan

SELECT norekening from tblnasabah
UNION
Select norekening from tblpemasukan


