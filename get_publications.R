library(scholar)
library(writexl)
library(tidyverse)

scholar.id <- "Vc7DmLIAAAAJ" 
pub <- get_publications(scholar.id)
pub %>% 
  data.frame() %>% 
  dplyr::arrange(desc(year),title) %>% 
  filter(!grepl('erratum',title,ignore.case = TRUE)) %>% 
  write_xlsx("publications.xlsx")

