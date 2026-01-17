# İçerik
* Unit 1
  + Identifying and Handling Missing Values in R Data Cleaning Process
  + Handling Missing Client Data in R
  + Filling Missing Values with Median and Handling Missing Addresses
  + Filling Missing Values in Client Data
  + Managing Missing Values in Museum Artifact Data
* Unit 2
  + Data Cleaning Techniques: Managing Duplicates and Outliers in R
  + Cleaning School Data: Handling Duplicates and Outliers in R
  + Handling Duplicates and Outliers in R Data Frames
  + Replace Outlier Grades with Mean Value
  + Cleaning School Data: Removing Duplicates and Handling Age Outliers in R
* Unit 3
  + Data Normalization Techniques in R
  + Normalizing Planetary Temperatures with Min-Max Technique in R
  + Normalize Space Explorer Weights Without Centering
  + Normalizing Moon Mass Data: A Bug Fix Challenge in R
  + Normalization of Planetary Distances in R
  + Normalize Space Rover Weights with Min-Max Scaling in R
* Unit 4
  + Categorical Data Encoding in R
  + Encoding Categorical Data in R
  + Label Encoding in R for Clothing Inventory Data
  + Encode Clothing Items into Numerical Values
  + One-Hot Encoding in R for Clothing Colors Dataset

  
# Bilgi
**Eğitim Dili:** İngilizce

**Eğitim Adı:** Data Cleaning and Preprocessing with R

**Organizasyon:** CodeSignal

# Notlar
Eğitimi çevrim içi olarak aldım ve 2 Ekim 2025 tarihinde tamamladım. Sanıyorum, içeriği etkinlikler ile verme amacı vardı sistemin. Çok kısa metin anlatımlar (isteyenler için aynı metnin video anlatımı da vardı) yapıldıktan sonra hemen kodlama pratiklerine geçiliyordu, datacamp gibi. Bu eğitim 6 eğitimden oluşan **Data Analysis 101 with R** isimli bir patikanın üçüncü eğitimi idi.
Kodlama ödevleri de basitti. Eğitim adını tam karşılamıyordu içerik kısacası. 
Bir de kodlama pratiklerinde, Cosmo isimli bir yapay zeka robotu (köpek şeklinde) yardım ediyordu. Ancak onun da bir enerji sınırı vardı. Tek seferde doğru ya da yanlış en fazla 5 pratik yapılabiliyordu. Belki de bu nedenle eğitim içeriği eğitim adını kapsayamayacak şekilde tasarlanmak zorunda kalmıştı.

Eğitimden birkaç not:

**Tekrarlı Veriyi Silme**
```
# Create DataFrame
df <- data.frame(
    Name = c('John', 'Anna', 'Peter', 'John', 'Anna'), 
    Age =  c(16, 15, 13, 16, 15), 
    Grade = c(9, 10, 7, 9, 10)
)

# Identify duplicates
print(df[duplicated(df),])

# Remove duplicates
df <- df[!duplicated(df),]
print(df)
```

**Uçdeğerlerden Kurtulma**
```
# Create dataset
df <- data.frame(
   students = c('Alice', 'Bob', 'John', 'Ann', 'Rob'),
   scores = c(56, 11, 50, 98, 47)
)

# Compute Q1, Q3, and IQR
IQR_scores <- IQR(df$scores)  # 9
Q1_scores <- quantile(df$scores, 0.25)  # 47
Q3_scores <- quantile(df$scores, 0.75)  # 56

# Lower and Upper Bounds
lower_bound <- Q1_scores - 1.5 * IQR_scores  # 33.5
upper_bound <- Q3_scores + 1.5 * IQR_scores  # 69.5

# Detect outliers
outliers <- df[(df$scores < lower_bound) | (df$scores > upper_bound),]
print(outliers)

# Remove outliers from data
df <- df[(df$scores >= lower_bound & df$scores <= upper_bound),]
print(df)
```

**Min-Max ve Z Normalizasyonu**
```
df <- data.frame(
    "Space Explorer" = c('Spock', 'Kirk', 'McCoy', 'Scotty'),
    "Height" = c(183, 178, 170, 178)
)
df$Height <- (df$Height - min(df$Height)) / (max(df$Height) - min(df$Height))
print(df$Height)

df$Height <- scale(df$Height)
print(df$Height)
```

**Faktörleştirme**
```
sizes <- c("Small", "Medium", "Large")

sizes_factor <- factor(sizes, levels = c("Small", "Medium", "Large"), labels = c(0, 1, 2))
print(sizes_factor)

df <- data.frame(gender = c("Male", "Female", "Female", "Male"))

df$gender_factor <- factor(df$gender, levels = c("Male", "Female"), labels = c(1, 2))
print(df)
```

**One-Hot Encoding**
```
colors <- c("Red", "Green", "Blue", "Red", "Green")

df <- data.frame(colors)

df_onehot <- model.matrix(~colors-1, df)
print(df_onehot)
```
