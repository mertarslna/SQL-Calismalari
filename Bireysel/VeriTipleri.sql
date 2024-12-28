--VER� T�PLER�

--Tamsay�lar
--bigint: 8 Byte
--int: 4 Byte
--smallint: 2 Byte
--tinyint: 1 Byte
--bit: E�er tabloda 8 ya da daha az bit kolonu varsa 1 Byte,
--     8'den fazla ise 2 Byte yer kaplar.

--Ondal�kl�lar
--decimal/numeric: 1'den 9'a kadar 5 Byte
--                 10'dan 19'a kadar 9 Byte
--                 20'den 28'e kadar 13 Byte
--                 29'dan 38'e kadar 17 Byte
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

--Tarih-Saat
--date: (0001-01-01'den 9999-12-31'e kadar) 
--		4 Byte
--smalldatetime: (1900-01-01'den 2079-06-06'ya kadar) 
--				 4 Byte
--datetime: (1753-01-01'den 9999-12-31'e kadar) 
--			8 Byte
--datetime2: (0001-01-01'den 9999-12-31'e kadar) 
--				  1'den 2'ye kadar 6 Byte
--                3'dan 4'a kadar 7 Byte
--                5'den 7'e kadar 8 Byte
--datetimeoffset: (0001-01-01'den 9999-12-31'e kadar) 
--				  1'den 2'ye kadar 8 Byte
--                3'dan 4'a kadar 9 Byte
--                5'den 7'e kadar 10 Byte
--time: (00:00:00'dan 23:59:59.9999999'a kadar) 
--		3-5 Byte (kesir hassasiyetine ba�l�)

--Di�er veri tipleri
--image: Dosya (resim dosyas�) tutmak i�in kullan�l�r
--binary: Sabit boyutlu binary (ikili) verileri saklar, her kay�t belirtilen uzunluk kadar yer kaplar.
--varbinary: De�i�ken boyutlu binary verileri saklar, yaln�zca kullan�lan veri kadar yer kaplar.
--varbinary(max): �ok b�y�k binary verileri (�r. dosyalar) saklar, maksimum 2 GB veri depolar.
--sql_variant: Farkl� veri tiplerini ayn� s�tunda tutmaya izin verir, esneklik sa�lar.
--Xml: XML format�ndaki yap�land�r�lm�� verileri saklar ve �zerinde sorgulama yap�lmas�na olanak tan�r.
--Table: Ge�ici tablo veya ge�ici veri saklamak i�in kullan�l�r, bellekten i�lem yapar ve i�lem sonunda silinir.
