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

--Tarih-Saat
--date: (0001-01-01'den 9999-12-31'e kadar) 
--		4 Byte
--smalldatetime: (1900-01-01'den 2079-06-06'ya kadar) 
--				 4 Byte
--datetime: (1753-01-01'den 9999-12-31'e kadar) 
--			8 Byte
--datetime2: (0001-01-01'den 9999-12-31'e kadar) 
--			 6-8 Byte (kesir hassasiyetine baðlý)
--datetimeoffset: (0001-01-01'den 9999-12-31'e kadar) 
--				  10 Byte
--time: (00:00:00'dan 23:59:59.9999999'a kadar) 
--		3-5 Byte (kesir hassasiyetine baðlý)
