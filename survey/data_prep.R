raw <- rio::import(here::here("~/evanchim_github/evangelina_phd/survey/Manejo de Guacheras Encuesta.xlsx")) %>% 
  clean_names() %>% 
  select(vacination=p1, prepartum=p2, experience=p3, capacitations=p4, rearing_system = p5, realiza_calostrado = p6, calostrum_feeding_num=p8, clostrum_feeding_vol=p9, liquid_feeding_volume=p11, hygiene=p13, disease_ranking=p14, mortality=p15, feed_cows = p23, milk_yield=p24, scc=p25, afb=p29, ffi=p31) 

raw %>% export("~/evanchim_github/evangelina_phd/survey/Manejo de Guacheras Encuesta.xlsx")



library(googlesheets4)
# link <- "https://docs.google.com/spreadsheets/d/1qFQ6y0W2VpPMxHesjjZ9IKmZsKcjFHIxvZgKe0aStzo/edit?usp=sharing"
# survey_sheet <- gs4_get(link)
# raw %>% sheet_write(ss= survey_sheet, sheet="data")
raw <- read_sheet(ss= survey_sheet, sheet="data")
raw %>% rio::export(here::here("survey/survey23.csv"))

