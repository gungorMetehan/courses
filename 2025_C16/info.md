# İçerik


# Bilgi
**Eğitim Dili:** Türkçe

**Eğitim Kodu:** TTC2637

**Eğitmen:** Cem Özdemir

**Eğitim Tarihi:** 31.07.2025 - 01.08.2025 (16 Saat)

**Organizasyon:** TUSAŞ Akademi

# Notlar
Bu eğitim iki günlük idi. 31 Temmuz 2025 ve 1 Ağustos 2025 tarihlerinde gerçekleştirildi.

## 1. GÜN
- Power BI ile çalışılırken en başta File > Options & Settings > Options > Current File > Data Load yoluna giderek "Update or delete relationships when refreshing data", "Autodetect new relationships after data is loaded" ve "Auto date/time" seçeneklerinin kapatılması yararlı olabilir. Böylelikle kullanıcı bazı özelliklerin otomatik uygulanmasını önleyebilir.
- Power BI ile çalışılırken en başta File > Options & Settings > Options > Current File > Regional Settings kısmında dili English (United States) seçilir ise İngilizce kurallarına göre çalışılabilir.
- Veri setindeki değişkenler üzerinde basit işlemler yapmak için veri setinin yanındaki üç noktaya tıkladıktan sonra Edit Query tıklanıyor. Ardından Power Query üzerinden veri seti incelebilir. Burada işlemler genelde Transform ve Add Column menüleri ile yapılıyor. İkisi arasındaki temel fark, yapılan işlemler ile yeni bir değişken oluşturulup oluşturulmayacağıdır. Veri türüne göre gerçekleştirilebilecek işlemler zaten bu iki menünün altındaki gruplamadan anlaşılabiliyor. Bunun dışındaki işlemler için bir miktar kodlama bilmek gerekiyor.
- Ekranın en altında 'Column profiling based on top 1000 rows' yazıyor. Bu sıkıntılı bir durum. Veri setinde bir hata (error) varsa bu görüntülenememiş olabilir. Bu nedenle en başta bu yazının üzerine tıklanarak 'Column profiling based on entire data set' seçilebilir.
- View menüsü altındaki 'Column distribution' açık hale getirildiğinde her bir değişkenin dağılımını en üstte gösteriyor. Burada her bir değişken için distinct ve unique değerler veriliyor. Buradaki unique kavramı biraz farklı. Buradaki unique ilgili sütunda yalnızca 1 kere tekrar eden değerlerin sayısı. Ne işe yarar bu kısım: Distinct ve Unique değerleri birbirine eşit ise bu sütun/değişken iki ya da daha fazla veri setini birleştirmede kullanılabilecek bir değişken olabilir. Distinct değerlerin sayısı çok ise ve unique değer 0 ise, bu değişken belki gruplandırılabilir (alt - orta - üst gibi).
- View menüsü altındaki 'Column quality' açık hale getirildiğinde her bir değişkenin kalitesi hakkında bilgi alınabilir. Burada her bir değişken için Valid, Error ve Empty oranları görüntülenebilir. Buradan kayıp veri oranları bilgisine ulaşılabilir.
- Birden fazla veri seti birlikte ve birleştirilerek Power BI'a aktarılabiliyor. Örneğin, 3 farklı yıla ilişkin satış verisini Home > Get data > All > Folder dedikten sonra ilgili klasördeki tüm veri setlerini birlikte içeri aktarmak mümkün.
- İçeri aktarma önceden yapılmış olsa bile birden fazla tablo birleştirilebilir. Bunun için Home > Append Queries seçilmeli. Burada tablolardaki sütunların isimleri birebir aynı olmalı. Sıraları farklı olsa da sistem bulabilir. Ancak değişken isimleri aynı olmalı.
- Veri seti birleştirme işi Home > Merge Queries'ten yapılıyor. Diyalog penceresinde anahtar değişken seçiliyor. işleme devam edildiğinde veri setine bir 'table' ekleniyor. Ancak bu genelde biraz fazla bilgi içeriyor. Burada değişken ismininin yanındaki oka tıklayarak birleştirilen bilgiler arasında sadece ilgilenilenler seçilebilir.
- Dashboard çalışmalarında veriler genelde farklı veri setlerinde saklanır. Ek olarak bir de sadece tarih sütunu içeren bir çeşit calendar veri seti oluşturulur. Bu veri setine tıklayıp Edit Query dedikten sonra veri setine çeyrek bilgileri, gün adı bilgileri, ay adı bilgileri eklenebilir. Bunun için Home > Add Column > Date yolu takip edilir.
- İlk gün arayüz tanıtıldı, veriler içeri aktarıldı, veri setleri üzerinde basit işlemler menüler yardımıyla gerçekleştirildi.

## 2. GÜN
- Veri setlerine Column tools menüsündeki New column seçeneği kullanıldıktan sonra fonksiyonlar yardımıyla yeni sütunlar eklenebiliyor.
- Şu fonksiyonlar örneklendirildi:
  + `LEFT()`
  + `SEARCH()`
  + `IF()`
  + `YEAR()` & `TODAY()`
