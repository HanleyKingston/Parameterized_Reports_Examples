################################################
#
# Render word markdown for parameters_example.Rmd
#
################################################

#clean data environment
rm(list = ls())
library(quarto)
library(dplyr)


# Render (using quarto) ----------------------------------------
quarto::quarto_render(
  "paramaters_example.qmd", 
  output_file = paste0("Report_", Sys.Date(), ".docx"),  #Default output location is working directory
  execute_params = list(
    person = "Tom",
    message = "Get lost"), #we don't provide the exclamation argument, so it will use the default (TRUE)
  output_format = "docx")
