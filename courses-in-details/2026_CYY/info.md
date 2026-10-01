# Contents
* Section 1: Getting Started
  - 1\. READ ME: Important Notes for New Students [Video, 2 min]
  - 2\. Course Introduction [Video, 3 min]
  - 3\. Meet Maven Analytics [Video, 1 min]
  - 4\. Course Structure & Outline [Video, 3 min]
  - 5\. DOWNLOAD: Course Resources [Video, 1 min]
  - 6\. Introducing the Course Project [Video, 3 min]
  - 7\. Setting Expectations [Video, 2 min]
* Section 2: Introducing Microsoft Power BI Desktop
  - 8\. Section Introduction [Video, 1 min]
  - 9\. Meet Power BI Desktop [Video, 5 min]
  - 10\. Downloading Power BI [Video, 3 min]
  - 11\. IMPORTANT: Adjusting Settings [Video, 3 min]
  - 12\. Power BI Desktop Interface & Workflow [Video, 4 min]
  - 13\. Resources & Monthly Updates [Video, 2 min]
  - Quiz 1: QUIZ: Introducing Power BI Desktop
* Section 3: Connecting & Shaping Data
  - 14\. Section Introduction [Video, 2 min]
  - 15\. Power BI Front-End vs. Back-End [Video, 2 min]
  - 16\. Types of Data Connectors [Video, 9 min]
  - 17\. The Power Query Editor [Video, 5 min]
  - 18\. Basic Table Transformations [Video, 11 min]
  - 19\. ASSIGNMENT: Table Transformations [Video, 1 min]
  - 20\. SOLUTION: Table Transformations [Video, 6 min]
  - 21\. PRO TIP: Storage & Connection Modes [Video, 3 min]
  - 22\. Connecting to a Database [Video, 5 min]
  - 23\. Extracting Data from the Web [Video, 4 min]
  - 24\. Data QA & Profiling Tools [Video, 11 min]
  - 25\. Text Tools [Video, 10 min]
  - 26\. ASSIGNMENT: Text-Specific Tools [Video, 1 min]
  - 27\. SOLUTION: Text-Specific Tools [Video, 3 min]
  - 28\. Numerical Tools [Video, 10 min]
  - 29\. ASSIGNMENT: Numerical Tools [Video, 1 min]
  - 30\. SOLUTION: Numerical Tools [Video, 2 min]
  - 31\. Date & Time Tools [Video, 11 min]
  - 32\. Change Type with Locale [Video, 5 min]
  - 33\. PRO TIP: Rolling Calendars [Video, 8 min]
  - 34\. ASSIGNMENT: Calendar Tables [Video, 1 min]
  - 35\. SOLUTION: Calendar Tables [Video, 2 min]
  - 36\. Index & Conditional Columns [Video, 10 min]
  - 37\. Calculated Column Best Practices [Video, 3 min]
  - 38\. Grouping & Aggregating [Video, 8 min]
  - 39\. Pivoting & Unpivoting [Video, 7 min]
  - 40\. Merging Queries [Video, 7 min]
  - 41\. Appending Queries [Video, 7 min]
  - 42\. PRO TIP: Appending Files from a Folder [Video, 8 min]
  - 43\. Data Source Settings [Video, 5 min]
  - 44\. PRO TIP: Data Source Parameters [Video, 14 min]
  - 45\. Refreshing Queries [Video, 3 min]
  - 46\. PRO TIP: Importing Excel Models [Video, 6 min]
  - 47\. Power Query Best Practices [Video, 2 min]
  - Quiz 2: QUIZ: Connecting & Shaping Data


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

## Primary Key'lerin Belirlenmesi
Eğitmen **Primary & Foreign Keys** bölümünde tablolardaki primary key'lerin belirlenmesini gösterdi. Bu aslında mantıklı. Genelde kullanmadığım için ilgimi çekti. Tablo içe aktarıldıktan sonra şu yol izlenmeli:
**Model View** kısmı açıldıktan sonra ilgili tabloya tıklanmalı. Bu halde sağda açılan **Properties** menüsünden **Key column** için veri setinde gerçekten primary key olan sütun girilmeli. İlerleyen zamanda işe yarayabilir.


## Active ve Inactive Relationships
Bir modeldeki iki tablo arasında yalnızca bir tane aktif ilişki kurulabilir. Diğerleri inactive olacaktır. Inactive olan ilişkiler noktalı çizgiler ile gösterilir modelde. Peki, yalnızca 1 aktif ilişki kurulabiliyorsa inaktif ilişki neden var? İki nedeni var: Birincisi, daha sonraları inaktif ilişki kullanılabilir, hazırda bekliyor olur. İkincisi ise DAX kodlarıyla bu inaktif ilişkiden zorlama bir şekilde faydalanabilir.

## M Code ile DAX Arasındaki Fark
Eğitmen, öğrencilerinin kendisine DAX ile M Code arasında ne fark diye sorular yönelttiğini söyledi. Eğitmen 75. bölümde şu şekilde açıkladı:
- M and DAX are two distinct functional languages used within Power BI Desktop.
- M is used in the Power Query Editor, and is designed specifically for extracting, transforming and loading data.
- DAX is used in the Power BI front-end, and is designed specifically for analyzing relational data models.
