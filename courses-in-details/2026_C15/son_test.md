# SON TEST: Uygulamalarla SQL Öğreniyorum [BTK Akademi]

**Soru 1:**

Tabloya veya tablodaki sütuna geçici bir ad vermek için kullanılan alias olarak da ifade edilen SQL ifadesi aşağıdakilerden hangisidir?

* a) ALTER
* b) AS *
* c) DISTINCT
* d) DROP

**Soru 2:**

Full Text Search ile ilgili hangisi yanlıştır?

* a) Veritabanları dikeyde (satırlar üzerinde) çalışacak şekilde tasarlanmıştır. Yatayda aramalarda (uzun textlerde) aynı performansı vermez.
* b) SQL Server'da kurulumda opsiyonel bir parametre olarak seçilir.
* c) Sadece text data değil, resim video gibi data türlerinde de kullanılır. *
* d) Text verileri kelimelere parçalayarak indexler.

**Soru 3:**

Tablolar arası ilişkiler kurulurken, birinci tablodaki Primary Key'i, ikinci tabloda başka bir Primary Key'e bağlarken, ikinci key ne olarak adlandırılır?

* a) Foreign Key *
* b) Primary Key
* c) Unique Key
* d) Composite Key

**Soru 4:**

SELECT * FROM MUSTERILER WHERE ID NOT IN (SELECT ID FROM MUSTERILER WHERE SEHIR='İSTANBUL') sorgusu sözel olarak hangi sonucu getirir?

* a) Bütün müşterileri getirir.
* b) Hiçbir kayıt getirmez.
* c) Şehri İstanbul olan müşterileri getirir.
* d) Şehri İstanbul olmayan müşterileri getirir. *

**Soru 5:**

Bir personel tablosunda toplam kaç bayan ve kaç erkek olduğunu listeleyen komut satırı aşağıdakilerden hangisidir?

* a) `SELECT cinsiyet,COUNT(*) IN personelSayısı FROM personel GROUP BY cinsiyet;`
* b) `SELECT cinsiyet,FROM AS personelSayısı FROM personel GROUP BY cinsiyet;`
* c) `SELECT *FROM AS personelSayısı FROM personel GROUP BY cinsiyet;`
* d) `SELECT cinsiyet,COUNT(*) AS personelSayısı FROM personel GROUP BY cinsiyet;` *


**Soru 6:**

Aşağıdakilerden hangisi yanlıştır?

* a) Order By komutu kolon ismi ile kullanılabileceği gibi kolon sıra numarası ile de kullanılabilir.
* b) Bir aggregate function sorguda şart olarak kullanılıyorsa Having komutu ile kullanılmalıdır.
* c) Distinct komutu Group By ile kullanılmalıdır. *
* d) Bir where şartında Or ve And birlikte kullanılabilir.

**Soru 7:**

Aşağıdakilerden hangisi yanlıştır?

* a) Excel bir veritabanıdır.
* b) MYSQL bir veritabanı sunucudur.
* c) SQL Server bir veritabanı yönetim sunucudur.
* d) Microsoft Access bir veritabanı sunucudur. *

**Soru 8:**

Eğer bir kolondaki farklı değerlerin sayısını öğrenmek istiyorsak COUNT ifadesini nasıl kullanılırız?

* a) `COUNT(DROP tabloAdı)`
* b) `COUNT(DROP kolonAdı)`
* c) `COUNT(DISTINCT tabloAdı)`
* d) `COUNT(DISTINCT kolonAdı)` *

**Soru 9:**

Hangisi Varchar ile Char veritipinin ortak özelliği değildir?

* a) Her ikisi de hafızada her bir karakter 1 byte yer tutar.
* b) Her ikisi de like ile aramayı destekler.
* c) Her ikisi de diskte girilen karakter sayısı kadar yer tutar. *
* d) Her ikisi de uluslararası karakterleri desteklemez. (Çince, Arapça gibi)

**Soru 10:**

Ankara kelimesinin baştan 4 harfini yazdıran komut satırı aşağıdakilerden hangisidir?

* a) `SELECT LEFT('Ankara',4);` *
* b) `SELECT LEFT(4,'Ankara');`
* c) `SELECT SUBSTRING('Ankara',4);`
* d) `SELECT RIGHT('Ankara',4);`

**Soru 11:**

Bir çalışanlar tablosunda geliri 5000 TL'den fazla 10000 TL'den az olanların isim ve yıllarıyla birlikte çekilmesini gösteren SQL sorgusu aşağıdakilerden hangisidir?

* a) `SELECT * FROM CALISANLAR WHERE GELIR<10000 GELIR>5000;`
* b) `SELECT ISIM,YIL,GELIR FROM CALISANLAR WHERE GELIR<10000 AND GELIR>5000;` *
* c) `SELECT * FROM CALISANLAR WHERE GELIR<=10000 AND GELIR>=5000;`
* d) `SELECT ISIM,YIL,GELIR FROM CALISANLAR WHERE GELIR<=10000 AND GELIR>=5000;`

**Soru 12:**

OCAK Ayında en çok satış yapan 10 mağazayı getiren sorgu hangisidir?

* a) `Select TOP 10 MAGAZA,SUM(TOPLAMSATIS) FROM SATISLAR WHERE DATEPART(MONTH,TARIH)=1 GROUP BY MAGAZA ORDER BY SUM(TOPLAMSATIS) DESC` *
* b) `Select TOP 10 MAGAZA,SUM(TOPLAMSATIS) FROM SATISLAR WHERE DATEPART(MONTH,TARIH)=1 ORDER BY SUM(TOPLAMSATIS)`
* c) `Select TOP 10 MAGAZA,SUM(TOPLAMSATIS) FROM SATISLAR WHERE DATEPART(MONTH,TARIH)=1 GROUP BY MAGAZA ORDER BY MAGAZA`
* d) `Select TOP 10 MAGAZA,SUM(TOPLAMSATIS) FROM SATISLAR WHERE DATEPART(MONTH,TARIH)=1 ORDER BY MAGAZA`

**Soru 13:**

Personel isimli tabloda var olan meslek alanının karakter sayısını 45 olarak değiştiren komut satırı aşağıdakilerden hangisidir?

* a) `CREATE TABLE personel ALTER COLUMN meslek varchar(45);`
* b) `ALTER TABLE personel ALTER COLUMN meslek varchar(45);` *
* c) `ALTER TABLE personel ALTER ROW meslek varchar(45);`
* d) `ALTER TABLE personel CREATE COLUMN meslek varchar(45);`

**Soru 14:**

SQL Server 2017 Developer Edition sürümü ile alakalı hangisi yanlıştır?

* a) Developer edition sadece geliştirme ortamında kullanılabilir.
* b) Developer Edition Enterprise Edition'ın tüm özelliklerini kapsar.
* c) Developer Edition ücretsizdir.
* d) Developer Edition 180 gün deneme sürümüne sahiptir. *

**Soru 15:**

SQL Server 2017 Express Edition sürümü ile alakalı hangisi yanlıştır?

* a) Donanımsal olarak sınırlamaları vardır.
* b) SQL Server'ın ücretsiz sürümüdür.
* c) Sadece 1 kullanıcılık lisansa sahiptir. *
* d) Hem gelştirme ortamında hem canlı ortamda kullanılabilir.

**Soru 16:**

CAN SEZER Müşterisinin şubat ayında yaptığı alışverişlerde en çok aldığı 3 ürünü getiren sorgu hangisidir?

* a) `SELECT TOP 3 MUSTERIADI,URUNADI,SUM(TOPLAMSATIS) FROM SATISLAR WHERE MUSTERIADI='CAN SEZER' AND DATEPART(MONTH,DATE_)=2 GROUP BY MUSTERIADI,URUNADI ORDER BY 3 DESC` *
* b) `SELECT TOP 3 MUSTERIADI,URUNADI,SUM(TOPLAMSATIS) FROM SATISLAR WHERE MUSTERIADI='CAN SEZER' AND DATEPART(MONTH,DATE_)=2 GROUP BY MUSTERIADI,URUNADI ORDER BY 3`
* c) `SELECT TOP 3 MUSTERIADI,URUNADI,SUM(TOPLAMSATIS) FROM SATISLAR WHERE MUSTERIADI='CAN SEZER' AND DATEPART(MONTH,DATE_)=2 GROUP BY MUSTERIADI,URUNADI ORDER BY 2 DESC`
* d) `SELECT TOP 3 MUSTERIADI,URUNADI,SUM(TOPLAMSATIS) FROM SATISLAR WHERE MUSTERIADI='CAN SEZER' AND DATEPART(MONTH,DATE_)=2 GROUP BY MUSTERIADI,URUNADI ORDER BY SUM(TOPLAMSATIS)`

**Soru 17:**

Bir personel tablosunda cinsiyeti bayan, yaşı 25 ve mesleği yazılım geliştirici olan kullanıcıların tüm bilgilerini sorgulamak için aşağıdaki komutlardan hangisi kullanılır?

* a) `SELECT * FROM personel IN (cinsiyet='bayan' AND yas =25 AND meslek='yazılım gelistirici');`
* b) `SELECT * FROM personel WHERE cinsiyet='bayan' AND yas =25 AND meslek='yazılım gelistirici';` *
* c) `SELECT cinsiyet,yas,meslek FROM personel WHERE cinsiyet='bayan' AND yas =25 AND meslek='yazılım gelistirici';`
* d) `SELECT * FROM personel BETWEEN cinsiyet='bayan' AND yaş =25 AND meslek='yazılım gelistirici';`

**Soru 18:**

Bir personel tablosunda personellerin yaşlarını küçükten büyüğe göre sıralayıp bütün bilgileri listelemek için aşağıdaki komutlardan hangisi kullanılır?

* a) `SELECT COUNT(*) personel ORDER BY yas ASC;`
* b) `SELECT * FROM personel ORDER BY yas ASC;` *
* c) `SELECT * FROM personel ORDER BY yas DESC;`
* d) `SELECT * FROM personel ORDER BY yas DESC;`

**Soru 19:**

SQL Server Instance ne demektir?

* a) SQL Server'ın IP bilgisidir.
* b) SQL Server'ın yönetici hesabı bilgisidir.
* c) Bir sunucuda çalışan her bir SQL Server hizmeti bir instance'tır. *
* d) SQL Server'ın kurulum dili bilgisidir.

**Soru 20:**

İki tablodan eşleşen kayıtlar ve eşleşmeyen sol ve sağ kayıtlar için kullanılır, yani left join ve right join'in birleşimidir. Yukarıda açıklaması yapılan terim aşağıdakilerden hangisidir?

* a) (inner) join
* b) full (outer) join *
* c) left (outer) join
* d) right (outer) join

**Soru 21:**

SQL kelimesi ile alakalı aşağıdakilerden hangisi yanlıştır?

* a) Bir çok veritabanı kendine göre özelleştirmiştir.
* b) Bir çok veritabanında kullanılabilir.
* c) Bir veritabanıdır. *
* d) Yapısal Sorgulama Dili anlamına gelir.

**Soru 22:**

Bir müşteri tablosundaki en genç müşteriyi listeleyen komut aşağıdakilerden hangisidir?

* a) `SELECT TOP 1 musteriAd,musteriSoyad,dogumTarihi FROM musteri SORT dogumTarihi DESC;`
* b) `SELECT * FROM TOP 1 musteriAd,musteriSoyad,dogumTarihi FROM musteri ORDER BY dogumTarihi ASC;`
* c) `SELECT TOP 1 musteriAd,musteriSoyad,dogumTarihi FROM musteri WHERE dogumTarihi ASC;`
* d) `SELECT TOP 1 musteriAd,musteriSoyad,dogumTarihi FROM musteri ORDER BY dogumTarihi DESC;` *

**Soru 23:**

Aşağıdaki sorgudan dönen cevap nedir?

`SELECT * FROM CUSTOMER WHERE BIRTHDATE='1980-15-01'`

* a) Hata Verir: "Conversion failed when converting date and/or time from character string." *
* b) Hata Verir: "Conversion failed when converting the varchar value '' to data type int."
* c) Doğum tarihi 15.01.1980 olan tüm kayıtları getirir.
* d) Doğum tarihi '1980-15-01' olan kimse olmadığı için boş döner.

**Soru 24:**

Aşağıdakilerden hangisi SQL dilini kullanan veritabanlarından biri değildir?

* a) Oracle
* b) Firebird
* c) Workbench *
* d) MySQL

**Soru 25:**

Order by komutu ile alakalı hangisi yanlıştır?

* a) Sonucu sıralama için kullanılır.
* b) ORDER BY 1 şeklinde kullanılırsa 1. sütuna göre sıralama yapar.
* c) Sadece sayısal alanları sıralama yapar. *
* d) ASC küçükten büyüğe, DESC büyükten küçüğe sıralama için kullanılır.
