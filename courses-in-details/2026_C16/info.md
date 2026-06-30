# İçerik
* 0.) Yapay Zeka İçin Python
     + 0.1. Tanıtım [Metin]
     + 0.2. Bilgilendirme [Video, 3:01 dk]
     + 0.3. Eğitimde Kullanılan Linkler [Metin]
* 1.) Python'a Giriş
     + 1.1. Python Nedir ve Nasıl Kurulur? [Video, 8:40 dk]
     + 1.2. VS Code Kurulumu ve Ayarları [Video, 4:51 dk]
     + 1.3. İlk Python Dosyamız ve Hello World [Video, 14:03 dk]
     + 1.4. GitHub ve Eğitim Kaynaklarına Erişim [Video, 1:11 dk]
* 2.) Python'da Temel Yapılar
     + 2.1. Değişken Kavramı [Video, 11:48 dk]
     + 2.2. Integer (int) [Video, 13:28 dk]
     + 2.3. Float [Video, 11:13 dk]
     + 2.4. String 1 [Video, 10:48 dk]
     + 2.5. String 2 [Video, 11:11 dk]
     + 2.6. Veri Tipi Kontrolü ve Tip Dönüşümleri [Video, 11:33 dk]
     + 2.7. Listeler [Video, 18:38 dk]
     + 2.8. Tuple [Video, 12:38 dk]
     + 2.9. Sözlük (Dictionary) [Video, 8:42 dk]
     + 2.10. Set [Video, 7:57 dk]
     + 2.11. Veri Yapıları Arasındaki Farklar [Video, 7:44 dk]
     + 2.12. Python Temel Yapılar Ödev ve Çözümleri [Video, 5:04 dk]
* 3.) Döngüler ve Kontrol Yapıları
     + 3.1. If Else Mantığı [Video, 17:28 dk]
     + 3.2. For Döngüsü [Video, 14:06 dk]
     + 3.3. While Döngüsü [Video, 13:47 dk]
     + 3.4. Break, Continue, Pass ve Nested Yapılar [Video, 11:37 dk]
     + 3.5. Döngüler ve Kontrol Yapıları Ödev ve Çözümleri [Video, 3:41 dk]


# Bilgi
**Eğitim Dili:** Türkçe

**Eğitim Adı:** Python for Artificial Intelligence (Yapay Zeka İçin Python)

**Eğitmenler:** Kaan Can Yılmaz

**Organizasyon:** Turkish Artificial Intelligence Academy (Türkiye Yapay Zeka Akademisi)

# Notlar
Eğitimi çevrim içi olarak aldım.
Eğitim sırasında aldığım bazı notlar şunlar:
* `input()` fonksiyonu çıktı olarak string ifade verir.
```
sayi = input("Bir sayı girin: ")
print(sayi)
print(type(sayi))
```
Sonuç olarak <class 'str'> dönecektir. Geliştiriciler böyle geliştirmiş. Bu nedenle bazen `int()` fonksiyonu ile birleştirilebilir.

* Tek elemanlı tuple olayı: `x = (5)` sanki bir tuple gibi görünüyor. Ancak nu bir integer. Ama illa ki, tek elemanlı bir tuple yaratmak istiyorsanız `x = (5, )` yazabilirsiniz. `print(type(x))` bu durumda tuple döndürecektir.

* Set veri yapısında indeks olmaz. Küme sonuçta. Elemanları benzersizleştirmek için kullanılır genelde. Bu nedenle sıra bilgisini tutmaz.

* `list = [1, 2, 3]` şeklinde oluşturulan listeler, numpy array'lerin temelini oluşturur. `ogrenci = {"isim": "mete", "yas": 18}` şeklinde oluşturulan sözlükler ise pandas dataframe'lerin temelini oluşturur.
