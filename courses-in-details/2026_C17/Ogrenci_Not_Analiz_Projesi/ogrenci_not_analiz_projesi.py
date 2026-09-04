# Bu proje, kursun 12. bölümündeki projede kullanılan satır komutlarının düzenlenmiş ve değiştirilmiş bir versiyonudur.

"""
Öğrenci Not Analiz Projesi

Veri seti:
    - isim, yas, bolum ve not
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


class OgrenciNotAnalizSistemi:
    """
    Öğrenci not verilerini okuyan, analiz eden,
    filtreleyen ve görselleştiren bir sınıf.

    Attributes:
        dosya_yolu (str): Okunacak CSV dosyasının yolu
        df (pd.DataFrame): Okunan veri seti
    """

    def __init__(self, dosya_yolu):
        self.dosya_yolu = dosya_yolu
        self.df = None

    def veriyi_oku(self):
        """
        CSV dosyasını okur ve veri setini df değişkenine aktarır.
        """

        try:
            # CSV dosyasını oku
            df = pd.read_csv(self.dosya_yolu)

            # Veri setinin boş olup olmadığını kontrol et
            if df.empty:
                raise ValueError("CSV dosyası boş!")

            # Analiz için gerekli sütunları tanımla
            gerekli_sutunlar = {"isim", "yas", "bolum", "not"}

            # Gerekli sütunların veri setinde bulunup bulunmadığını kontrol et
            if not gerekli_sutunlar.issubset(df.columns):
                raise ValueError(
                    f"CSV dosyasında gerekli sütunlar eksik. "
                    f"Gerekli sütunlar: {gerekli_sutunlar}"
                )

            # Sayısal olması gereken sütunları dönüştür
            df["not"] = pd.to_numeric(df["not"], errors="raise")
            df["yas"] = pd.to_numeric(df["yas"], errors="raise")

            # Kontroller tamamlandıktan sonra veri setini sınıfa aktar
            self.df = df

            print("Veri başarıyla okundu.")
            print(self.df)

        except FileNotFoundError:
            self.df = None
            print(f"Hata: {self.dosya_yolu} bulunamadı.")

        except pd.errors.EmptyDataError:
            self.df = None
            print("Hata: CSV dosyası boş.")

        except ValueError as hata:
            self.df = None
            print(f"Hata: {hata}")

        except Exception as e:
            self.df = None
            print(f"Beklenmeyen hata: {e}")

    def temel_istatistikler(self):
        """
        Notların ortalamasını, maksimum ve minimum değerini
        ve standart sapmasını hesaplar.
        """

        try:
            # Veri setinin yüklenip yüklenmediğini kontrol et
            if self.df is None:
                raise ValueError("Lütfen önce veriyi yükleyiniz.")

            # Not sütununu NumPy dizisine dönüştür
            notlar = self.df["not"].to_numpy()

            # Temel istatistikleri hesapla
            print("\nTemel İstatistikler")
            print(f"Ortalama: {np.mean(notlar):.2f}")
            print(f"En büyük not: {np.max(notlar)}")
            print(f"En küçük not: {np.min(notlar)}")
            print(f"Standart sapma: {np.std(notlar):.2f}")

        except ValueError as hata:
            print(f"Hata: {hata}")

        except Exception as e:
            print(f"Beklenmeyen hata: {e}")

    def filtreleme(self):
        """
        Veri setini belirli öğrenci özelliklerine göre filtreler.
        """

        try:
            # Veri setinin yüklenip yüklenmediğini kontrol et
            if self.df is None:
                raise ValueError("Önce veri okunmalıdır.")

            print("\nFiltreleme Sonuçları")

            # Notu 80'den büyük olan öğrencileri seç
            yuksek_notlular = self.df[self.df["not"] > 80]
            print(f"\nNotu 80'den büyük olan öğrenciler:\n{yuksek_notlular}")

            # Yapay Zeka bölümündeki öğrencileri seç
            yapay_zeka_ogrencileri = self.df[
                self.df["bolum"] == "Yapay Zeka"
            ]
            print(
                f"\nBölümü Yapay Zeka olan öğrenciler:"
                f"\n{yapay_zeka_ogrencileri}"
            )

            # 22 yaşından büyük öğrencileri seç
            yasi_buyuk_olanlar = self.df[self.df["yas"] > 22]
            print(
                f"\n22 yaşından büyük olan öğrenciler:"
                f"\n{yasi_buyuk_olanlar}"
            )

        except ValueError as hata:
            print(f"Hata: {hata}")

        except Exception as e:
            print(f"Beklenmeyen bir hata: {e}")

    def gorsellestirme(self):
        """
        Öğrencilerin notlarını çubuk grafik üzerinde gösterir.
        """

        try:
            # Veri setinin yüklenip yüklenmediğini kontrol et
            if self.df is None:
                raise ValueError("Önce veri okunmalıdır.")

            # Grafik alanını oluştur
            plt.figure(figsize = (10, 5))

            # Öğrenci isimlerine göre not grafiğini çiz
            plt.bar(self.df["isim"], self.df["not"])

            # Grafik başlıklarını düzenle
            plt.title("Öğrenci Not Grafiği")
            plt.xlabel("Öğrenci İsimleri")
            plt.ylabel("Notlar")

            # Grafik elemanlarının düzgün yerleşmesini sağla
            plt.tight_layout()

            # Grafiği ekranda göster
            plt.show()

        except ValueError as hata:
            print(f"Hata: {hata}")

        except Exception as e:
            print(f"Beklenmeyen hata: {e}")

    def tum_analizi_calistir(self):
        """
        Veri okuma, analiz, filtreleme ve görselleştirme
        adımlarını sırasıyla çalıştırır.
        """

        # Veriyi CSV dosyasından oku
        self.veriyi_oku()

        # Veri yüklenemediyse analizi sonlandır
        if self.df is None:
            print("Analiz durduruldu.")
            return

        # Temel istatistikleri hesapla
        self.temel_istatistikler()

        # Belirlenen koşullara göre filtreleme yap
        self.filtreleme()

        # Öğrenci notlarını görselleştir
        self.gorsellestirme()


# Program doğrudan çalıştırıldığında analiz sistemini başlat
if __name__ == "__main__":

    # Kullanılacak CSV dosyasını belirle
    dosya_yolu = "ogrenci_notlari.csv"

    # Analiz sistemi nesnesini oluştur
    sistem = OgrenciNotAnalizSistemi(dosya_yolu)

    # Tüm analiz adımlarını çalıştır
    sistem.tum_analizi_calistir()