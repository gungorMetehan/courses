# İçerik
* Section 1: Welcome to the course!
  + Course structure and methodology [Video, 2 min]
* Section 2: Crash course on R
  + Chapter 1 Introduction [Video, 1 min]
  + What is R? [Video, 4 min]
  + Installing R and RStudio [Video, 5 min]
  + Update: RStudio becomes Posit [Video, 2 min]
  + First steps in R [Video, 9 min]
  + Let me interrupt this for a moment... [Text, 1 min]
  + Basics of R: Atomic types and Vectors [Video, 10 min]
  + Basics of R: Lists [Video, 10 min]
  + Basics of R: Matrices [Video, 10 min]
  + Basics of R: Arrays [Video, 4 min]
  + Basics of R: Dataframes [Video, 10 min]
  + Basics of R: Summary of the Data Types [Video, 1 min]
  + Basics of R: Factors [Video, 5 min]
  + Utilities in R: Reorder a dataframe by factor levels [Video, 4 min]
  + Utilities in R: Read a dataset from a file [Video, 11 min]
  + Utilities in R: Transforming data with dplyr [Video, 18 min]
  + Utilities in R: Handling missing values [Video, 4 min]
  + Utilities in R: Generation of sequences [Video, 10 min]
  + Utilities in R: Handling dates [Video, 7 min]
  + Utilities in R: Merging two dataframes [Video, 7 min]
* Section 3: The Grammar of Graphics
  + Chapter 2: Introduction [Video, 1 min]
  + Why ggplot2? [Video, 7 min]
  + How to draw a simple plot? [Video, 9 min]
  + The components of the Grammar of Graphics [Video, 10 min]
* Section 4: Geometries and line plots
  + Chapter 3: Introduction [Video, 1 min]
  + Geometries [Video, 6 min]
  + Saving your plot [Video, 6 min]
  + The line plot family [Video, 7 min]
  + Drawing line plots with multiple liens [Video, 4 min]
  + Line plot Exercise [Video, 1 min]
  + Line plot Exercise: Solution [Video, 3 min]
* Section 5: Datasets, mapping, and scatter plots.
  + Chapter 4: Introduction [Video, 1 min]
  + Datasets and mappings [Video, 11 min]
  + Overriding aesthetics [Video, 3 min]
  + Setting vs. mapping [Video, 5 min]
  + Data formats and the melt function [Video, 13 min]
  + Scatter plots (1 of 2) [Video, 9 min]
  + Scatter plots (2 of 2): Colors and labels [Video, 14 min]
  + Scatter plots: Exercise [Video, 2 min]
  + Scatter plots: Exercise Solution [Video, 10 min]
* Section 6: Statistical transformations and Plotting Distributions
  + Chapter 5: Introduction [Video, 1 min]
  + Statistical transformations (stats) [Video, 11 min]
  + Interesting stats [Video, 10 min]
  + Computed aesthetics [Video, 4 min]
  + What are distributions and how to plot them? [Video, 2 min]
  + Histograms and frequency polygons [Video, 10 min]
  + Density plots [Video, 5 min]
  + Histograms and stats: Exercise Solution [Video, 5 min]
  + Boxplots [Video, 13 min]
  + Violin plots [Video, 7 min]
  + Boxplots and Violin plots: Exercises [Video, 2 min]
  + Boxplots and Violin plots: Exercise Solution [Video, 5 min]
* Section 7: Position adjustment, Scales, and Bar plots
  + Chapter 6: Introduction [Video, 1 min]
  + Position Adjustment: identity, jitter & nudge [Video, 12 min]
  + Position Adjustment: stack, fill & dodge [Video, 13 min]
  + Scales: Definition & Usage [Video, 11 min]
  + Scales: Classification [Video, 7 min]
  + Scales: Position scales [Video, 14 min]
  + Scales: Data scales [Video, 9 min]
  + Scales: Color scales [Video, 18 min]
  + Scales: Manual & Identity scales [Video, 8 min]
  + Shortcuts to scales: labs & lims [Video, 4 min]
  + Bar plots [Video, 11 min]
  + How to make bar plots look good? [Video, 7 min]
  + Bar plots Exercise [Video, 2 min]
  + Bar plots Exercise Solution [Video, 8 min]
* Section 8: Coordinate systems, the Theme System, and Maps
  + Chapter 7: Introduction [Video, 1 min]
  + Coordinate Systems: Cartesian & Flip [Video, 8 min]
  + Coordinate Systems: Fixed & Quickmap [Video, 7 min]
  + Coordinate Systems: Polar [Video, 5 min]
  + The Theme System [Video, 5 min]
  + Modifying Individual Components of the Theme System [Video, 21 min]
  + [NEW] Bonus Track: ggplot's theme system cheatsheet [Text, 1 min]
  + Creating your own Custon Theme [Video, 11 min]
  + Maps: Background maps [Video, 7 min]
  + Maps: Choropleth maps [Video, 8 min]
  + Maps: Annotated & Bubble maps [Video, 12 min]
  + Maps: Plotting GIS Data [Video, 8 min]
* Section 9: Facets and Custom Plots
  + Chapter 8: Introduction [Video, 1 min]
  + Facets [Video, 6 min]
  + facet_grid vs facet_wrap [Video, 14 min]
  + Faceting example: follow-along exercise [Video, 6 min]
  + Maps & facets Exercise [Video, 2 min]
  + Maps & facets Exercise Solution [Video, 12 min]
  + Custom plots: the Lollipop plot [Video, 15 min]
  + Custom plots: the Dumbbell plot [Video, 15 min]
  + Custom plots: the "Fire" plot [Video, 15 min]
* Section 10: What next?
  + Congratulations! What next?


# Bilgi
**Eğitim Dili:** İngilizce

**Eğitmen:** Clara Granell, PhD

**Organizasyon:** The Data Ink Lab (Udemy)

# Notlar
Eğitimde gerçekten çok değerli bilgiler vardı. Temel bir ggplot2 ya da Grammar of Graphics tanıtımından öte ileri düzey uygulamaların da yer aldığı bir eğitimdi. Kullanıcı tanımlı bir temanın (theme) nasıl oluşturulacağı, choropleth harita görselleştirmesi, facet_grid() ve facet_wrap() fonksiyonları arasındaki fark gibi konular da yer alıyordu.

En ilgi çekici bilgilerden biri şu idi: Aşağıdaki komutları çalıştırarak basit bir görselleştirme yapalım.
```
p <- ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point() + geom_smooth()
p
```
Eldeki grafiğe yakından bakmak için x ekseninde sınırlar belirlenebilir. Aşağıdaki gibi bir kod çalıştırılabileceğini biliyoruz. Ancak bu doğru bir zoom-in yöntemi değil. Çünkü bu yöntemde aslında aralığa girmeyen veri noktaları görmezden geliniyor.
```
p + scale_x_continuous(limits = c(15, 20))
```
Oysa aşağıdaki gibi x eksenindeki limitler belirlenirse, istenildiği şekli ile grafiğe bir yaklaşma söz konusu olacak idi.
```
p + coord_cartesian(xlim = c(15, 20))
```
Kısacası, grafiği yakınlaştırmak için `coord_cartesian()` fonksiyonu `xlim` veya `ylim` argümanları ile birlikte kullanılmalı.
