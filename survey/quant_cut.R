
library(dplyr)
library(gtools)
tt <- iris %>%
  group_by(Species) %>%
  mutate(
    Sepal.Length.Band = quantcut(Sepal.Length, q = c(0, 0.33, 0.66, 1), 
                                 labels = c("low", "mid", "high"))
  )

table(tt$Species, tt$Sepal.Length.Band)
