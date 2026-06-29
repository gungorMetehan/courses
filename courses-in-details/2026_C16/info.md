# İçerik


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
