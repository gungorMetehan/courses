# Microsoft Power BI Desktop for Business Intelligence (Maven Analytics)
## Power BI'da Aynı Klasördeki Veri Setlerini Birleştirme

Aynı klasörde bulunan ve aynı yapıya sahip veri setleri varsa, Power BI'da bu veri setleri birleştirilerek tek bir veri seti şeklinde içe aktarılabilir.

Buradaki temel mantık şu: Eğer klasördeki dosyaların **sütun yapıları aynıysa**, yani her dosyada aynı değişkenler bulunuyorsa Power BI bu dosyaları tek tek içe aktarmak yerine bunların içerisindeki verileri **alt alta ekleyerek tek bir tablo hâline getirebilir**.

Derste kullandığımız örnekte aynı klasörde şu üç veri seti bulunuyordu:

```text
AdventureWorks Sales Data 2020.csv
AdventureWorks Sales Data 2021.csv
AdventureWorks Sales Data 2022.csv
```

Bu dosyaların her biri AdventureWorks satış verilerinin farklı yıllara ait kısımlarını içeriyordu. Dosyaların sütun yapıları aynı olduğu için 2020, 2021 ve 2022 yıllarına ait satış verileri Power BI içerisinde tek bir veri seti hâline getirilebildi.

### 1. Klasörü veri kaynağı olarak seçme

Öncelikle Power BI içerisinde şu yol izlendi:

**File > New Source > More... > Get Data > Folder**

Burada veri kaynağı olarak tek tek CSV dosyalarını seçmek yerine doğrudan **Folder** seçildi.

**Connect** düğmesine tıklandığında sistem bizden bir **Folder path**, yani klasör yolu istedi.

Burada:

**Browse**

seçeneğine tıklayarak şu üç dosyanın bulunduğu klasör seçildi:

```text
AdventureWorks Sales Data 2020.csv
AdventureWorks Sales Data 2021.csv
AdventureWorks Sales Data 2022.csv
```

Bu aşamada önemli olan nokta, bu dosyaların aynı yapıya sahip olmasıdır. Yani örneğin 2020 dosyasında bulunan sütunların 2021 ve 2022 dosyalarında da aynı biçimde bulunması beklenir.

### 2. Data Preview ekranı

Klasör seçildikten sonra bir **Data Preview** penceresi açıldı.

Ancak burada doğrudan satış verileri görüntülenmedi.

Bunun yerine Power BI bize klasörün içerisinde bulunan **dosyalara ilişkin bilgileri** gösterdi.

Örneğin ekranda buna benzer bir yapı yer aldı:

```text
Content | Name                               | Extension | ...
------------------------------------------------------------
Binary  | AdventureWorks Sales Data 2020.csv | .csv      | ...
Binary  | AdventureWorks Sales Data 2021.csv | .csv      | ...
Binary  | AdventureWorks Sales Data 2022.csv | .csv      | ...
```

Dolayısıyla bu aşamada ekrandaki her satır henüz bir satış kaydını değil, klasörde bulunan bir **dosyayı** temsil etmektedir.

### 3. Power Query Editor'a geçme

Veriler içe aktarıldıktan sonra **Power Query Editor** kısmında da ilk olarak veri setinin kendisi yerine dosyalara ilişkin bilgiler görüntülendi.

Burada Power BI tarafından otomatik olarak oluşturulan sütunlardan biri:

**Content**

isimli sütundur.

`Content` sütununda CSV dosyalarının içeriği **Binary** biçiminde tutulmaktadır.

Yani bu aşamada AdventureWorks satış kayıtlarını henüz doğrudan görmüyoruz. Öncelikle bu dosyaların içeriklerini birleştirmemiz gerekiyor.

### 4. Content sütunundan dosyaları birleştirme

`Content` isimli sütunun başlığının yanında küçük bir **Combine Files** simgesi bulunuyor.

Bu simgeye tıklandığında:

**Combine Files**

penceresi açılıyor.

Power BI bu aşamada klasörde bulunan dosyalardan birini örnek dosya olarak kullanıyor ve bu dosyanın yapısına bakarak diğer dosyaları da aynı şekilde içe aktarıyor.

Bizim örneğimizde:

```text
AdventureWorks Sales Data 2020.csv
AdventureWorks Sales Data 2021.csv
AdventureWorks Sales Data 2022.csv
```

dosyalarının yapıları aynı olduğu için Power BI bu üç CSV dosyasını aynı şekilde okuyabiliyor.

Gerekli seçimler yapıldıktan sonra:

**OK**

diyoruz.

### 5. Birleştirilmiş veri seti

OK dedikten sonra artık üç farklı CSV dosyasındaki satış verileri tek bir veri seti içerisinde görüntüleniyor.

Yani:

```text
AdventureWorks Sales Data 2020.csv
            ↓
AdventureWorks Sales Data 2021.csv
            ↓
AdventureWorks Sales Data 2022.csv
```

dosyalarının içerisindeki satırlar birbirlerinin altına ekleniyor.

Sonuçta 2020, 2021 ve 2022 yıllarına ait satış kayıtlarını içeren tek bir AdventureWorks satış tablosu elde edilmiş oluyor.

Burada yapılan işlem aslında bir **Append** işlemidir.

Çünkü dosyalardaki değişkenler/sütunlar aynı kalırken satırlar birbirlerinin altına eklenmektedir.

Yani mantık kabaca şöyledir:

```text
2020 satış kayıtları
↓
2021 satış kayıtları
↓
2022 satış kayıtları
```

Bu işlem bir **Merge/Join** değildir. Merge işleminde tablolar genellikle ortak bir değişken üzerinden yan yana birleştirilirken, burada aynı yapıya sahip tabloların satırları **alt alta eklenmektedir**.

### 6. Source_Name sütunu

Dosyalar birleştirildikten sonra veri setinde kaynak dosyayı gösteren bir sütun da bulunabilir.

Derste kullandığımız örnekte bu sütun:

**Source_Name**

şeklindeydi.

Bu sütun, ilgili satırın hangi CSV dosyasından geldiğini gösteriyor.

Örneğin veri seti içerisinde şöyle bir yapı görülebilir:

```text
Source_Name                           SalesOrderLineKey   ...
-----------------------------------------------------------
AdventureWorks Sales Data 2020.csv   ...                 ...
AdventureWorks Sales Data 2020.csv   ...                 ...
AdventureWorks Sales Data 2021.csv   ...                 ...
AdventureWorks Sales Data 2021.csv   ...                 ...
AdventureWorks Sales Data 2022.csv   ...                 ...
```

Bu nedenle veri setleri tek bir tabloda birleştirilmiş olsa bile her bir satırın hangi dosyadan geldiğini takip edebiliyoruz.

Bu örnekte dosya adları yılı da içerdiği için `Source_Name` sütunu aynı zamanda kaydın hangi yıla ait olduğunu anlamamıza yardımcı olabilir.

Örneğin:

```text
AdventureWorks Sales Data 2020.csv → 2020
AdventureWorks Sales Data 2021.csv → 2021
AdventureWorks Sales Data 2022.csv → 2022
```

### Kısaca hatırlamak için

Derste yaptığımız işlemin mantığı şu şekildeydi:

```text
AdventureWorks Sales Data klasörü
        ↓
2020.csv + 2021.csv + 2022.csv
        ↓
Get Data > Folder
        ↓
Klasörü seç
        ↓
Dosyalara ilişkin bilgiler görüntülenir
        ↓
Power Query Editor
        ↓
Content sütunundaki Combine Files simgesine tıkla
        ↓
Combine Files
        ↓
OK
        ↓
2020, 2021 ve 2022 verileri alt alta eklenir
        ↓
Tek bir AdventureWorks Sales Data veri seti oluşur
```

### Önemli

Bu işlemin düzgün çalışabilmesi için klasörde bulunan dosyaların **aynı veya uyumlu veri yapısına sahip olması** gerekir.

Bizim örneğimizde:

```text
AdventureWorks Sales Data 2020.csv
AdventureWorks Sales Data 2021.csv
AdventureWorks Sales Data 2022.csv
```

dosyalarının aynı sütun yapısına sahip olması sayesinde üç farklı yıla ait satış verileri tek bir tabloda birleştirilebilmiştir.

Özetle, **aynı klasörde bulunan ve aynı sütun yapısına sahip CSV dosyalarını Power BI'a tek tek aktarmak yerine Folder bağlantısı kullanarak topluca içe aktarabilir ve Append mantığıyla tek bir veri seti hâline getirebiliriz.**
