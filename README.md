# Parameterized Reports Examples
Examples of rendering reports in R with different parameters that are passed to the render() function in rendering scripts

<br>

# Toy Examples:
[parameters_example.qmd](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/0087fcae124df564293f76134423b6eb89ea42f4/paramaters_example.qmd) - Markdown report with default paramaters provided
- [paramaters_example.md](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/4b1f91073165e8ce78e4c10bf0bf0da451d79ff9/paramaters_example.md) - Output of rendering
- [render_parameters_example_basic.R](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/c9337c7032375cb6ad74ff4326e9161e976d1c56/render_parameters_example_basic.R) - Rendering script for the above report using quarto::quarto_render function (would also work with rmarkdown::render).
- [render_parameters_example_loop.R](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/c9337c7032375cb6ad74ff4326e9161e976d1c56/render_parameters_example_loop.R) - Rendering script for the above report using rmarkdown::render function (would also work with quarto::quarto_render). Loops through parameters to produce 4 numbered reports.

<br>

# Real World Example:
Note: this does not provide any actual output. It's included only as a more real-world example to show how the rendering script & .qmd interact. The below example would produce 24 reports in total.  
[wastewater_alerts_YAML_ONLY.qmd](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/c9337c7032375cb6ad74ff4326e9161e976d1c56/wastewater_alerts_YAML_ONLY.qmd) - Example yaml for a report
- [render_wastewater_alerts.R](https://github.com/HanleyKingston/Parameterized_Reports_Examples/blob/c9337c7032375cb6ad74ff4326e9161e976d1c56/render_wastewater_alerts.R) - Rendering script for the above report
