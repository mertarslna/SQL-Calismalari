SELECT *,CONVERT(DATE,DATE_) AS DATE2 
FROM SALES WHERE CITY='ANKARA'
ORDER BY DATE_

--SELECT CONVERT(DATE,'2019-01-01 08:46:10.000') -- Data tipini değiştirme fonksiyonu
--SELECT CONVERT(TIME,'2019-01-01 08:46:10.000')
--SELECT CONVERT(DATETIME,'2019-01-01 08:46:10.000')