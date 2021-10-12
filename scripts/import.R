library(tidyverse)
library(readxl)
library(here)

liiklusonnetused <- read_excel(
  here("data/Liiklusõnnetused_2011-2020.xlsx"), 
  guess_max = 13000)

liiklusonnetused %>% 
  rename_all(str_to_lower) %>% 
  rename_all(str_remove_all, "[\\[\\]]") %>% 
  rename_all(str_replace_all, " ", "_") %>% 
  write_csv(here("data/liiklusonnetused.csv"))
