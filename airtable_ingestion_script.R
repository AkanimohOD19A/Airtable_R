library(tidyverse)
library(openxlsx)
library(data.table)
library(airtabler)
library(stringr)
library(janitor)


setwd("C:/Users/buasc/OneDrive/Documents/Rpubs")

# Set API KEY
readRenviron(".Renviron")
API_KEY = Sys.getenv("AIRTABLE_API_KEY")
BASE_ID = "appZS1hS6973d84JF"
TABLE_NAME = "tblRrTLK2PBbiRRsy"
BASE_URL = "https://airtable.com/"
URL_SUFFIX = "viwZuc8Nlm9GdPEqW?blocks=hide"

URL = paste0(BASE_URL,"/",BASE_ID,"/",TABLE_NAME,"/",URL_SUFFIX)
cat("Fetching data from", URL, "...", "\n")

# Sys.setenv("AIRTABLE_API_KEY"=API_KEY)
airtable <- airtable(BASE_ID, TABLE_NAME)
airtable_df <- airtable$`tblRrTLK2PBbiRRsy`$select_all() %>% 
  clean_names() %>% 
  as_tibble() 

cat("Completed Ingestion | Row:", dim(airtable_df)[1], "columns: ", dim(airtable_df)[2])

## General Review
# glimpse(airtable_df)
