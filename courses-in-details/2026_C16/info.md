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

* Döngüler ve Kontrol Yapıları başlığı altında güzel örnekler vardı, o nedenle not aldım.
```
"""
if yapısı: bir koşul doğruysa altındaki kod bloğunu çalıştırır.
Örnek kullanımı şu şekildedir:
if kosul:
    yapilacak_islem
"""

sayi = 10 
if sayi > 0: # koşul: eğer sayı 0 dan büyükse
    print("Sayı pozitiftir.") # eğer bu koşul = doğru ise print fonksiyonu çağrılır.

# if sayi > 0:
# print("burası çalşmaz.") # IndentationError: expected an indented block after 'if' statement on line X uyarısı verir.

# if else yapısı: if koşulun doğru olmadığına bakar sadece, else koşul yanlış ise çalışır.
sayi = -3

if sayi > 0:
    print("pozitif")
else:
    print("pozitif değil")

# if - elif - else: ilk doğru koşul çalışır, diğerleri kontrol edilmez, hiçbiri doğru değilse else çalışır.

ogrenci_not = 72
if ogrenci_not > 85:
    print("A")
elif ogrenci_not > 70:
    print("B")
elif ogrenci_not > 50:
    print("C")
else:
    print("F")

# mantıksal operatörler: birden fazla koşulun birleşmesi

yas = 20
ogrenci = True # boolean (mantıksal değer)

# eğer kişinin yaşı 25'ten küçükse ve bu kişi öğrenci ise öğrenci indirimi uygulansın.
if yas < 25 and ogrenci == True:
    print("Öğrenci indirimi uygula")

# eğer kişinin yaşı 25'ten küçükse veya bu kişi öğrenci ise öğrenci indirimi uygulansın.
if yas < 25 or ogrenci == True:
    print("Öğrenci indirimi uygula")

# if ve liste yapısının birlikte kullanımı
meyveler = ["elma", "armut", "muz"]

if "elma" in meyveler:
    print("elma listede var")
else:
    print("elma listede yok")

# stok kontrol örneği

meyveler = ["elma", "armut", "muz"]

urun = input("Bir meyve girin: ") # Burada büyük harf - küçük harf duyarlılığı vardır.

if urun in meyveler:
    print("Stokta var")
else:
    print("Stokta yok")
```

```
"""
for degisken in koleksiyon:
    yapilacak_islem

degisken: her turda (iterasyon) değişen geçici isim
koleksiyon: liste, tuple gibi veri yapıları
"""

# liste ile for döngüsü
sayilar = [10, 20, 30]

for sayi in sayilar:
    print(sayi + 5)

# range() fonksiyonu ile for döngüsü
for i in range(5): # [0, 1, 2, 3, 4]
    print(i)

for i in range(1, 7):
    print(i)

# for ile toplama işlemi
sayilar = [10, 20, 30]

toplam = 0
for s in sayilar:
    print(s)
    toplam = toplam + s

print(toplam) # 60

# for + if kullanımı
sayilar = [1,2,3,4,5,6]

for sayi in sayilar:
    if sayi % 2 == 0:
        print(f"Çift: {sayi}")
```

```
"""
while döngüsü nedir?
    - koşul doğru olduğu sürece çalışan bir döngüdür.
    - if yapısı koşulu sadece 1 kez kontrol eder, while yapısı ise koşulu her iterasyonda kontrol eder.
    - koşul doğru (True) olduğu sürece döngü devam eder.
Örnek kullanımı şu şekildedir:
while kosul:
    yapilacak_islem
"""

i = 0 
while i < 5: # i küçüktür 5'ten koşulu doğru olduğu sürece yazdırma işlemini yap.
    print(i)
    i = i + 1

print(f"i: {i}")

# sayaç mantığı
sayac = 1
while sayac <= 3:
    print("merhaba")
    sayac += 1 # bu aslında sayac = sayac + 1 işlemi yerine geçer.

# while + if kullanımı
i = 0
while i < 10:

    if i % 2 == 0:
        print(f"çift: {i}")
    
    i += 1

# kullanıcı kontrollü while
giris = ""
while giris != "q": 
    giris = input("Çıkmak için q yazın: ")
    print(f"Kullanıcı mesajı: {giris}")
```

```
"""
break nedir?
    - döngüyü tamamen durdurmak için kullanılır.
    - koşul sağlandığında döngüden çıkar ve bir daha devam etmez.
"""

for i in range(10):
    
    # eğer i değeri 5'e eşitse döngüden çıksın, yani döngü devam etmesin.
    if i == 5:
        break
    print(i)

"""
continue nedir?
    - o anki turun atlanması ama döngünün devam etmesi için kullanılır.
"""

for i in range(10):
    if i == 5:
        continue
    print(i)

"""
pass nedir?
    - henüz kod yazmadığımız yerde o kısmı boş bırakmak için kullanılır.
    - program hata vermez ama hiçbir işlem yapılmaz.
"""

if True:
    # burayı sonra doldur
    pass

for i in range(3):
    if i == 1:
        pass
        # todo: eğer 1 ise buraya bir şeyler yap
    print(i)

"""
nested yapılar:
    - yapıların birbirinin içinde olması
    - if içerisinde if, for içerisinde if gibi, if içerisinde while gibi
"""

# for içerisinde if 
for i in range(5):
    if i % 2 == 0:
        print(i)

# if içerisinde if
yas = 20
ogrenci = True

if yas < 25:
    if ogrenci:
        print("Öğrenci indirimi")

# for içerisinde for
for i in range(3):
    for j in range(2):
        print(f"i: {i}, j: {j}")
```
