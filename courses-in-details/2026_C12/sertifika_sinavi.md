**SERTİFİKA SINAVI**

**Soru 1:**

Aşağıdakilerden hangisi gözetimsiz öğrenme algoritmasıdır?
  + a) K En Yakın Komşuluk Algoritması
  + b) Destek Vektör Makineleri
  + c) DBSCAN Algoritması *
  + d) C4.5 Algoritması
  + e) Naive Bayes Algoritması

**Soru 2:**

Aşağıdakilerden hangisi DBSCAN algoritması ile elde edilen kümeleme sonuçlarını etkilemez?
  + a) Kullanılan uzaklık/benzerlik metriği
  + b) Başlangıç kümelerinin seçimi *
  + c) Epsilon komşuluk değeri
  + d) Küme içinde olması gereken minimum nokta sayısı
  + e) Veri kümesi

**Soru 3:**

k-Medoids algoritmasının k-Means algoritmasından temel farkı nedir?
  + a) Küme merkezlerinin sadece veri kümesi içinden seçilmesi *
  + b) Kullanılan uzaklık/benzerlik metriği
  + c) Başlangıç küme merkezlerinin seçimi
  + d) Küme sayısı
  + e) Küme içerisinde olması gereken minimum nokta sayısı

**Soru 4:**

Hangisi yoğunluk tabanlı kümeleme algoritmalarından değildir?
  + a) DBSCAN
  + b) OPTICS
  + c) DENCLUE
  + d) CLIQUE
  + e) Canopy *

**Soru 5:**

<img width="742" height="366" alt="tablo" src="https://github.com/user-attachments/assets/cf5f5fe6-3a1b-431d-be69-70737e919d53" />

Yukarıda 8 noktalı bir veri setinin uzaklık matrisi verilmiştir. Bu veri setini ε=3 ve minPts=3 alarak DBSCAN algoritması ile çalıştırdığınızda gürültülü nokta (noise) sayısı kaç olur?
  + a) 1
  + b) 2 *
  + c) 3
  + d) 4
  + e) 5

**Soru 6:**

```
from sklearn import datasets
iris = datasets.load_iris()
from sklearn import svm
clf = svm.SVC(kernel='linear')
clf.fit(......,......)
```

Yukarıda, 150 x 4 boyutlu ve 3 sınıflı “iris” veri setinin Destek Vektör Makineleri ile sınıflandırılması için Phyton programlama dilinde kod parçası verilmiştir. Modelin öğrenmesi için verilen clf.fit(……,……) satırında noktalı yerlere ne gelmelidir?
  + a) clf.fit(iris,3)
  + b) clf.fit(iris.data,3)
  + c) clf.fit(iris.target,4)
  + d) clf.fit(iris.data,iris.target) *
  + e) clf.fit(iris.target,3)

**Soru 7:**

<img width="591" height="408" alt="weka" src="https://github.com/user-attachments/assets/1dec09df-e5ef-4d0c-a259-04608fe0be7e" />

131072 x 17 boyutlu ve 2 sınıflı bir veri seti WEKA programı kullanılarak NaiveBayes algoritması ile sınıflandırıldığında elde edilen Hata Matrisi (Confusion Matrix) yukarıdaki gibi elde edilmiştir. Buna göre modelin doğruluk metrik değeri aşağıdakilerden hangisidir?
  + a) %92
  + b) %95.2172
  + c) %91.7542 *
  + d) %8.2458
  + e) %86.8284

**Soru 8:**

ACCORD.NET kullanılarak C# programlama dilinde bir veri seti 3 kümeye bölünmek isteniyor ve bunun için aşağıdaki kod parçası yazılıyor. 
```
KMeans kmeans = new KMeans(3);
var clusters = kmeans.Learn(veriseti);
```
Kümeleme sonucu elde edilen küme etiketlerine ulaşmak için hangi method kullanılmalıdır?
  + a) clusters.fit(veriseti);
  + b) clusters.Decide(veriseti); *
  + c) clusters.Centroids;
  + d) kmeans.Error;
  + e) kmeans.Decide(veriseti)

**Soru 9:**

```
from sklearn import tree
from sklearn import datasets
cancer = datasets.load_breast_cancer()
clf = tree.DecisionTreeClassifier()
clf = clf.fit(cancer.data, cancer.target)
```
“BREAST-CANCER” veri kümesi PHYTON programlama dilini kullanarak Karar Ağaçları ile sınıflandırılıyor ve bunu için yukarıdaki kod parçası yazılıyor. Sınıflandırma sonucu elde edilen karar ağacını göstermek için hangi satır yazılmalıdır?
  + a) tree.plot_tree(clf) *
  + b) tree.plot_tree(cancer)
  + c) clf.tree
  + d) clf.DecisionTreeClassifier()
  + e) cancer.plot_tree()

**Soru 10:**

Aşağıdakilerden hangisi gözetimsiz öğrenme yöntemlerinin değerlendirmesi için kullanılan içsel değerlendirme yöntemlerindendir?
  + a) Entropi
  + b) Saflık
  + c) Duyarlılık
  + d) Normalize Ortak Bilgi
  + e) Davies-Bouldin İndeksi *
