SELECT CITY,FICHENO,COUNT(*) AS [�R�N SAYISI] FROM SALES
WHERE MONTHNAME_ = '01.OCAK' AND CITY = 'ADANA'
GROUP BY CITY,FICHENO
ORDER BY CITY