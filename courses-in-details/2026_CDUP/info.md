# Dijital Üniversite

# 1. Ders: İstatistiğe Giriş (Doç. Dr. Zübeyir Nişancı - Marmara Üniversitesi)

+ **Tarih ve Saat:** 10 Kasım 2026 | 14.00 - 17.00
+ **Yer:** Çevrim İçi

Eğitmen saat 14.00'da çevrim içi idi, ancak teknik aksaklıkların giderilmesinin ardından eğitim 14.10 gibi başladı. Eğitmen de 14.20'ye kadar proje ile ilgili genel açıklamalar yaptı ve sonrasında eğitime başladı.

Eğitimin adı **Verilenden Üretilene** idi. İlk slaytın üzerinde bunun Latincesi olan _Ex dato and generatum_ yazıyordu. Veri bilimi, veri analizi konularında kullanılan kurgulanmış teknik / felsefi bir deyiş bu.

Eğitmen sunumunu şu başlıklar altında toplamıştı:
* i. Büyük dönüşümler
* ii. Veri nedir?
* iii. Harf ve sayı
* iv. Mantık, devre, makine
* v. Tablo ve istatistik
* vi. Kuraldan öğrenmeye
* vii. Bugün ve yarın
* viii. Ne yapmalı?

**Bugün neyi konuşacağız?** başlıklı slaytta ise eğitimde yanıtlanmaya çalışılacak olan altı soru listelenmişti.
* 1) Veri nedir?
* 2) Verinin epistemolojik yapısı nedir: verilen mi, alınan mı?
* 3) Makineler veriyi nasıl okur, nasıl saklar; ikili sistemle ilgisi ne?
* 4) İnsanlar veriyi tarih boyunca nasıl sakladı?
* 5) Bu birikim yapay zekâya kadar nasıl dönüştü; hangi aşamalardan geçtik?
* 6) Bugün neredeyiz, yarın ne yapmalıyız?

Eğitimin bir yerinde şu ifade vardı:
> Kategorik olarak tanımlanabilen her şey ve her durum, saymanın ve dolayısıyla istatistiğin konusu olabilir.

Eğitimde **Rengin de kodu var: #F05923** başlıklı bir slayt vardı, burada HEX kodlarından bahsediliyordu. İlgimi çeken kısımlardan biri burasıydı.
HEX kodu, bir rengin kırmızı (R), yeşil (G) ve mavi (B) ışık miktarını göstermekte. Ekrandaki renkler bu üç ışığın karışımıyla oluşur.
Peki, HEX kodu nasıl okunur?

`#F05923` kodunu ikişerli ayıralım: `F0 | 59 | 23`.

| Bölüm | Temsil ettiği ışık | Ondalık değeri |
| --- | --- | ---: |
| `F0` | Kırmızı (R) | 240 |
| `59` | Yeşil (G) | 89 |
| `23` | Mavi (B) | 35 |

Her kanal **0–255** arasında değer alır. Eğitmenin verdiği örnekte (projede ve slaytlarda kullanılan bir turuncu rengi idi) kırmızı yüksek, yeşil daha az, mavi düşük olduğu için turuncuya yakın bir renk oluşur. RGB karşılığı `rgb(240, 89, 35)` şeklinde yazılır.

HEX, **16 tabanlı** sayı sistemidir. Rakamları `0–9` ile başlar; ardından `A=10, B=11, C=12, D=13, E=14, F=15` gelir.

İki basamaklı bir HEX sayısının ondalık karşılığı, ilk basamağın değeri 16 ile çarpılıp ikinci basamağın değeri eklenerek hesaplanır:

- `F0` → **15 × 16 + 0 = 240**
- `59` → **5 × 16 + 9 = 89**
- `23` → **2 × 16 + 3 = 35**

Her HEX basamağı **4 bit**, her iki basamaklı grup **8 bit**, yani **1 bayt** eder. Dolayısıyla altı HEX basamağından oluşan bu RGB kodu toplam **24 bittir**. Başındaki `#` işareti bu bit sayısına dahil değildir.

Örneğin kırmızı kanalı:

```text
HEX:     F    0
İkili:   1111 0000
Ondalık: 240
```

Üç kanalın tamamı şöyle gösterilebilir:

| Kanal | HEX | İkili sistem (8 bit) | Ondalık |
| --- | --- | --- | ---: |
| Kırmızı (R) | `F0` | `11110000` | 240 |
| Yeşil (G) | `59` | `01011001` | 89 |
| Mavi (B) | `23` | `00100011` | 35 |

Buradaki **ikişerli gruplama, bitlerin değil HEX basamaklarının ikişerli gruplanmasıdır.** Her grup bir renk kanalının değerini belirtir.
Eğitmen sonrasında harflerin de 1 ve 0'lardan oluşmakta olduğunu örneklendirdi.

**Harflerin İkili Gösterimi: UTF-8 ve VERİ Kelimesi**

Bilgisayarlar harfleri de 1 ve 0’lardan oluşan bit dizileriyle saklar dendi. Bir harfin hangi bitlerle temsil edileceğini karakter kodlaması belirler. UTF-8, bir Unicode kod noktasını
1–4 bayt kullanarak kodlar.

**1 bayt = 8 bit**

**VERİ** kelimesinde V, E ve R harfleri ASCII aralığında bulunduğu için UTF-8’de **birer bayt** yer kaplar. **İ** (büyük noktalı i) ise bu aralığın dışında yer alır ve UTF-8’de **iki baytla** kodlanır.
Ek olarak, ASCII aralığının dışındaki bütün karakterler iki baytla kodlanmaz; bazıları üç veya dört bayt gerektirir.

**Bitlerin dairelerle gösterimi**

Her daire bir biti, sekiz daireden oluşan her grup bir baytı temsil eder. Daireler, bit dizileriyle aynı sırada, soldan sağa okunur.

| Harf | Unicode kod noktası | UTF-8 bit dizisi | Dairelerle gösterimi | Boyut |
| --- | --- | --- | --- | --- |
| **V** | `U+0056` | `01010110` | ○ ● ○ ● ○ ● ● ○ | 1 bayt |
| **E** | `U+0045` | `01000101` | ○ ● ○ ○ ○ ● ○ ● | 1 bayt |
| **R** | `U+0052` | `01010010` | ○ ● ○ ● ○ ○ ● ○ | 1 bayt |
| **İ** | `U+0130` | `11000100` / `10110000` | ● ● ○ ○ ○ ● ○ ○ / ● ○ ● ● ○ ○ ○ ○ | 2 bayt |

İ harfinin gösterimindeki **/** işareti iki baytı ayırmak için kullanılmıştır; verinin parçası değildir.

**VERİ** kelimesinin yukarıdaki karakterlerle UTF-8 kodlaması:

`01010110 01000101 01010010 11000100 10110000`

**1 + 1 + 1 + 2 = 5 bayt = 40 bit**

Bu hesap yalnızca kelimenin kodlanmış içeriğini kapsar; dosya üst bilgisi veya satır sonu gibi ek veriler dahil değildir.

Eğitmen bir de **Yarı yapılandırılmış veri: Her kişi bir öbek** başlıklı slaytında eskiden tabular sistemin olmadığından, veri kayıtlarının biraz dağınık tutulduğundan bahsetti. Örneğin Osmanlı Devleti zamanında ciddi miktarda veri toplanmış durumda. Ancak nüfus verilerinin olduğu raporlardan anlaşılacağı üzere,
hanedeki bir kişinin bilgileri öbek olarak tutulmuş. Nasıl bir sakala sahip olduğu, mesleği, lakabı, yaşı, vb. bilgiler tek bir öbek içinde tutulmuş. Amaç çünkü sadece teşhis etmek, sonrasında bu verilerin bir araya getirileceği düşüncesi ile toplanmamış veriler. Günümüzdeki tablo sistemi daha sonraları kullanılır hale gelmiş.

Ayrıca eğitimin bir slaytında 'şifre ve sıfır'ın aynı kelime kökünden geldiği ifade edilmişti, bir araştırmam gerek.

Eğitim 16.40'ta bitti. Ancak eğitmen bir QR kod paylaşacak sonrasında soru-cevap oturumu düzenledi, hem eğitim hem de proje ile ilgili sorular için.
