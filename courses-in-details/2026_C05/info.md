# İçerik
* Interface Introduction (Arayüz Tanıtımı)
* SQL Writing (SQL Yazımı)
* Start Menu (Başlangıç Menüsü)
* Report Builder Menu (Report Builder Menüsü)
* New Report or Dataset Dialog (Yeni Rapor veya Veri Kümesi Diyaloğu)
* Report Editor (Rapor Editörü)
* Data Sources (Veri Kaynakları)
* Datasets (Veri Kümeleri)
* Report Builder Features (Report Builder Özellikleri)
* Reporting Wizard (Raporlama Sihirbazı)
* Graphical Report Examples (Grafik Rapor Örnekleri)
* TAI-Specific Examples (TUSAŞ Özelinde Örnekler)
  
# Bilgi
**Eğitim Dili:** Türkçe

**Eğitim Adı:** Report Design with Microsoft Report Builder (Microsoft Report Builder Raporlama Aracı)

**Eğitmen:** Erdinç Erdoğan

**Organizasyon:** TUSAŞ Akademi

# Notlar
Eğitim yüz yüze olarak 5 Şubat 2026 tarihinde 1 gün olarak verildi (Sınıf Z-77). TUSAŞ Akademi'nin TTC1885 kodlu eğitimi idi bu eğitim.
Microsoft Report Builder isimli bir aplikasyonu gördük eğitimde. Blank bir sayfa açtıktan sonra soldaki Data Sources'ı fare ile sağ tıkladık ve Add Data Source... 
Use a connection embedded in my report dedikten sonra connection type için Microsoft SQL Server'ı seçtik. Build... dedikten sonra server name olarak mssqlcons,1433 girdik ve database name olarak da Northwind seçtik.
Böylelikle DataSource1 oluşturuldu. Bu sadece eğitim için bir veri tabanı. 
Sonrasında Datasets'e gelerek yine sağ tıklayarak Add Dataset... dedikten sonra "Use a dataset embedded in my report." seçili hale getirildi.
Data source seçildikten sonra sorgu yazılarak veri getirtilebilir. Eğer bilinmiyorsa sistem Query Designer... kısmı tıklanarak da temel seviyede bir yardım alınabilir.

Kullanılan veri seti için ilk kullandığımız sorgu kodları şöyle bir şey idi.

Customers veri setindeki ilk 5 satırı getirir.
```
SELECT TOP 5
  Customers.CustomerID
  ,Customers.CompanyName
  ,Customers.ContactName
  ,Customers.ContactTitle
  ,Customers.Address
  ,Customers.City
  ,Customers.Region
  ,Customers.PostalCode
  ,Customers.Country
  ,Customers.Phone
  ,Customers.Fax
FROM
  Customers
```

Customers veri setindeki Country değişkeninde yer alan 'Spain'i getirecektir (5 satır).
```
SELECT
*
FROM
  Customers WHERE Country LIKE 'S_a%'
```

'Spain' dışındaki diğer ülkelerin olduğu satırlar gelecektir.
```
SELECT
*
FROM
  Customers WHERE Country NOT LIKE 'S_a%'
```
