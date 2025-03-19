################################################
#
# Example Rendering script for wastewater_alerts_YAML_ONLY.R
#
################################################

# Note: EXAMPLE ONLY: WILL NOT PRODUCE AN OUTPUT. This is provided as an example rendering script.
# wastewater_alerts_YAML_ONLY.R is only the yaml of the corresponding report. Please see render_parameters_example_basic.R or render_parameters_example_loop.R for rendering scripts that will produce an output


# clean data environment
rm(list = ls())
library(rmarkdown)


# specify parameters ----------------------------------------

# Pathogens
pathogens <- c("SARS-CoV-2", "Influenza A", "Influenza B", "RSV")

# Cut-offs for WW level & trend: 6 sets of values to try  ------------------------------
levels_high <-             c(10,  10,  12,  12,  15,  15)
levels_elevated <-         c(5,   5,   8,   8,   10,  10)
trends_increasing <-       c(50,  75,  50,  75,  50,  75)
trends_strong_increase <-  c(100, 150, 100, 150, 100, 150)


# Generate reports ------------------------------

# Add directory to hold reports
dir_name <- "WW_alert_examples"
if (!dir.exists(dir_name)) {
  dir.create(dir_name, recursive = TRUE) 
}

# Render
for(pathogen_name in pathogens){
  for(i in 1:6){ #try 6 combinations of level / trend cut-offs
    save_name <-
      output_file <- paste0(dir_name, "/",
                            "WW_alert_examples_", pathogen_name, "_", i, ".html")
    rmarkdown::render("WWalerts.qmd", 
                      output_file = output_file, 
                      params = list(
                        pathogen_name = pathogen_name,
                        level_elevated = levels_elevated[i],
                        level_high = levels_high[i],
                        trend_increasing = trends_increasing[i],
                        trend_strong_increase = trends_strong_increase[i]
                      ),
                      envir = new.env())
  }
}

