library(tidyverse)

dat <- read.csv("paper/pesos.csv", dec=",") %>% 
  janitor::clean_names() %>% 
  mutate_if(is.character, as.factor)

glimpse(dat)

library(MASS)

# Fit the full model 
full.model <- lm(peso ~., data = dat)

# Stepwise regression model
step.model <- stepAIC(full.model, direction = "both", trace = FALSE)

summary(step.model)