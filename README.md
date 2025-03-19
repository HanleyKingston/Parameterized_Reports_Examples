# Parameterized Reports Examples
Examples of rendering reports in R with different parameters that are passed to the render() function in rendering scripts

<br>

# Toy Examples:
[parameters_example.qmd](parameters_example.qmd) - Markdown report with default paramaters provided
- [render_parameters_example_basic.R](render_parameters_example_basic.R) - Rendering script for the above report using quarto::quarto_render function (would also work with rmarkdown::render).
- [render_parameters_example_loop.R](render_parameters_example_loop.R) - Rendering script for the above report using rmarkdown::render function (would also work with quarto::quarto_render). Loops through parameters to produce 4 numbered reports.

<br>

# Real World Example:
Note: this does not provide any actual output. It's included only as a more real-world example to show how the rendering script & .qmd interact. The below example would produce 24 reports in total.  
[wastewater_alerts_YAML_ONLY.qmd](wastewater_alerts_YAML_ONLY.qmd) - Example yaml for a report
- [render_wastewater_alerts.R](render_wastewater_alerts.R) - Rendering script for the above report
