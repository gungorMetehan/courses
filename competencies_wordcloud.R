# required packages
library(dplyr)
library(tidyr)
library(stringr)

# data manipulation
competencies_long <- courses_competencies %>%
  select(Competencies) %>%
  drop_na() %>%
  separate_rows(Competencies, sep = "&") %>%
  mutate(Competencies = str_trim(Competencies))

competency_freq <- competencies_long %>%
  count(Competencies, sort = TRUE)

competency_freq <- competency_freq %>%
  mutate(Competencies = str_replace_all(Competencies, " ", "-"))

# export CSV
write.table(competency_freq,
            "competency_freq.csv",
            sep = ",",
            row.names = FALSE,
            col.names = FALSE)

# https://wordcloud.online/
# Source Type: CSV
# Font: Noto Sans
# Color palette: #2
# Text angle: Perpendicular
# Font size: 75%
# Padding between words: 2
# Shape: None