SELECT CITY,
	COUNT(DISTINCT FICHENO) AS [M��TER� SAYISI],
	COUNT(*) AS [�R�N SAYISI] FROM SALES
WHERE MONTHNAME_ = '01.OCAK'
GROUP BY CITY
ORDER BY CITY