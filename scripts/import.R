library(tidyverse)
library(readxl)
library(here)

liiklusonnetuste_andmed <- read_excel(here("data/liiklusonnetuste_andmed.xlsx"))
liiklusonnetuste_andmed %>% 
  rename_all(str_to_lower) %>% 
  rename_all(str_remove_all, "[\\[\\]]") %>% 
  rename_all(str_replace_all, " ", "_") %>% 
  write_csv(here("data/liiklusonnetuste_andmed.csv"))
