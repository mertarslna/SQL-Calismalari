--VER� T�PLER�

--Tamsay�lar
--bigint: 8 Byte
--int: 4 Byte
--smallint: 2 Byte
--tinyint: 1 Byte
--bit: E�er tabloda 8 ya da daha az bit kolonu varsa 1 Byte,
--     8'den fazla ise 2 Byte yer kaplar.

--Ondal�kl�lar
--decimal/numeric: 1'den 9'a kadar i�in 5 Byte
--                 10'dan 19'a kadar i�in 9 Byte
--                 20'den 28'e kadar i�in 13 Byte
--                 29'dan 38'e kadar i�in 17 Byte
--money: 8 Byte
--smallmoney: 4 Byte
--float: 7 basama�a kadar 4 Byte
--       15 basama�a kadar 8 Byte
--real: 4 Byte

--Metinler(String)
--char: Her bir karakter 1 Byte yer kaplar (0-255)
--nchar: Her bir karakter 2 Byte yer kaplar (0-4000)
--varchar: De�i�ken uzunluklu karakter dizileri (0-2^31-1)
--nvarchar: De�i�ken uzunluklu Unicode karakter dizileri (0-2^31-1)
--ntext: Maksimum 2 GB
--n olanlar Unicode desteklidir.

--Unicode: Uluslar aras� karakterleri destekler