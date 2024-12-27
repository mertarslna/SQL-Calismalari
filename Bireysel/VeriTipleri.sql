--VERÝ TÝPLERÝ

--Tamsayýlar
--bigint: 8 Byte
--int: 4 Byte
--smallint: 2 Byte
--tinyint: 1 Byte
--bit: Eðer tabloda 8 ya da daha az bit kolonu varsa 1 Byte,
--     8'den fazla ise 2 Byte yer kaplar.

--Ondalýklýlar
--decimal/numeric: 1'den 9'a kadar için 5 Byte
--                 10'dan 19'a kadar için 9 Byte
--                 20'den 28'e kadar için 13 Byte
--                 29'dan 38'e kadar için 17 Byte
--money: 8 Byte
--smallmoney: 4 Byte
--float: 7 basamaða kadar 4 Byte
--       15 basamaða kadar 8 Byte
--real: 4 Byte

--Metinler(String)
--char: Her bir karakter 1 Byte yer kaplar (0-255)
--nchar: Her bir karakter 2 Byte yer kaplar (0-4000)
--varchar: Deðiþken uzunluklu karakter dizileri (0-2^31-1)
--nvarchar: Deðiþken uzunluklu Unicode karakter dizileri (0-2^31-1)
--ntext: Maksimum 2 GB
--n olanlar Unicode desteklidir.

--Unicode: Uluslar arasý karakterleri destekler